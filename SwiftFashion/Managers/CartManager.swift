//
//  CartManager.swift
//  SwiftFashion
//
//  Created by Larry Nguyen on 4/13/23.
//

import Foundation
import OrderedCollections

final class CartManager: ObservableObject {
    @Published var cart: OrderedDictionary<OrderItem, Int> = [:] {
        didSet { calculateTotal() }
    }
    @Published var currentOrderItem: OrderItem = .unavailable
    @Published var total: Double = 0

    @Published var customer = Customer()
    @Published var orderStatus: OrderStatus = .invalid
    @Published var showAlert: Bool = false

    @Published var completedOrder: Order?

    let apiService: APIServiceProtocol
    let validationManager: ValidationProtocol

    init(apiService: APIServiceProtocol = APIService(),
         validationManager: ValidationProtocol = ValidationManager()) {
        self.apiService = Config.orderUITesting() ? MockAPIService() : apiService
        self.validationManager = validationManager
    }

    var itemCount: Int {
        quantityFor(item: currentOrderItem)
    }

    var orderError: OrderError?

    func prepareOrder(for product: Product) {
        currentOrderItem = OrderItem(product: product)
    }

    func selectedSize(_ size: String) {
        currentOrderItem.size = size
    }

    func selectedVariant(_ variant: ColorVariant) {
        currentOrderItem.image = variant.image
        currentOrderItem.color = variant.color
    }

    func addItem() {
        cart[currentOrderItem, default: 0] += 1
    }

    func decrementItem() {
        if let quantity = cart[currentOrderItem], quantity > 1 {
            cart[currentOrderItem] = quantity - 1
        } else {
            removeAll(item: currentOrderItem)
        }
    }

    func removeItem(at offsets: IndexSet) {
        let items = getItems()
        let itemsToRemove = offsets.map { items[$0] }
        itemsToRemove.forEach { removeAll(item: $0) }
    }

    func removeAll(item: OrderItem) {
        cart.removeValue(forKey: item)
    }

    func updateQuantity(item: OrderItem, quantity: Int) {
        if quantity == 0 {
            removeAll(item: item)
        } else {
            cart[item, default: 0] = quantity
        }
    }

    func quantityFor(item: OrderItem) -> Int {
        return cart[item, default: 0]
    }

    func empty() {
        cart.removeAll()
    }

    func getItems() -> [OrderItem] {
        return Array(cart.keys)
    }

    func calculateTotal() {
        var currentTotal: Double = 0

        for (item, quantity) in cart {
            currentTotal += (item.displayPrice * Double(quantity))
        }

        total = currentTotal
    }

    @MainActor
    func submitOrder() async {
        orderStatus = .processing

        defer {
            orderStatus = .valid
        }

        let orderID = UUID()

        var items = getItems()
        for (index, item) in items.enumerated() {
            items[index].orderID = orderID
            items[index].quantity = quantityFor(item: item)
        }

        let order = Order(id: orderID,
                          customerName: customer.name,
                          email: customer.email,
                          address: customer.address,
                          city: customer.city,
                          state: customer.state,
                          zip: customer.zip,
                          items: items)

        do {
            try validationManager.validate(customer)

            try await Task.sleep(for: .seconds(3))

            let endpoint = ShoppingEndpoint.createOrder
            let submittedOrder: Order = try await apiService.sendData(endpoint: endpoint, data: order)
            self.completedOrder = submittedOrder

            cart.removeAll()
            customer = .init()

        } catch let fieldError as FieldError {
            orderError = .invalidForm(fieldError.localizedDescription)
            showAlert = true

        } catch {
            orderError = .processingError
            showAlert = true
        }
    }

    func clearOrder() {
        completedOrder = nil
    }

    func dismissError() {
        orderError = nil
    }
}
