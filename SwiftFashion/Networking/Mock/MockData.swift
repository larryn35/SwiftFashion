//
//  MockData.swift
//  SwiftFashion
//
//  Created by Larry Nguyen on 4/19/23.
//
//  swiftlint:disable line_length

import Foundation

struct MockData {
    static let products = Bundle.main.decode([Product].self, from: "Product.json")
    static let order = Bundle.main.decode(Order.self, from: "Order.json")

    static let tshirtProduct = Product(id: UUID(),
                                       category: .tops,
                                       name: "T-shirt",
                                       description: "Introducing our classic and versatile t-shirt, perfect for any occasion. Made with soft and comfortable cotton, this t-shirt is lightweight and breathable, ensuring all-day comfort.",
                                       price: 1200,
                                       discount: 240,
                                       sizes: ["S", "M", "L"],
                                       variants: [grayVariant],
                                       updatedAt: Date())

    static let grayVariant = ColorVariant(id: UUID(),
                                          color: "Dusty Gray",
                                          hex: "9E8A8A",
                                          image: "tshirt-9E8A8A")

    static func createOrder() -> Order {
        let orderID = UUID()

        return Order(id: orderID,
                     customerName: L10n.Placeholder.name,
                     email: L10n.Placeholder.email,
                     address: L10n.Placeholder.address,
                     city: L10n.Placeholder.city,
                     state: L10n.Placeholder.state,
                     zip: L10n.Placeholder.zip,
                     items: [
                        createShirtOrderItem(for: orderID)
                     ])
    }

    static func createShirtOrderItem(for orderID: UUID = UUID()) -> OrderItem {
        return OrderItem(orderID: orderID,
                         name: "T-shirt",
                         image: "tshirt-9E8A8A",
                         color: "Dusty Gray",
                         size: "M",
                         price: 800,
                         discount: 200,
                         quantity: 2)
    }
}
