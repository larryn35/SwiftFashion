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

    let apiService: APIServiceProtocol

    init(apiService: APIServiceProtocol = APIService()) {
        self.apiService = apiService
    }

    var itemCount: Int {
        quantityFor(item: currentOrderItem)
    }

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
}
