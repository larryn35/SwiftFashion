//
//  CartManager.swift
//  SwiftFashion
//
//  Created by Larry Nguyen on 4/13/23.
//

import Foundation

@MainActor
final class CartManager: ObservableObject {
    @Published var cart: [OrderItem: Int] = [:]
    @Published var currentOrderItem: OrderItem = .unavailable

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
        if let quantity = cart[currentOrderItem], quantity > 0 {
            cart[currentOrderItem] = quantity - 1
        } else {
            removeAll(item: currentOrderItem)
        }
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
}
