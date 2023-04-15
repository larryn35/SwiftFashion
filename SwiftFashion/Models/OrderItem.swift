//
//  OrderItem.swift
//  SwiftFashion
//
//  Created by Larry Nguyen on 4/11/23.
//

import Foundation

struct OrderItem: Codable {
    var orderID: UUID?
    var name: String
    var image: String
    var color: String
    var size: String
    var price: Int
    var discount: Int
    var quantity: Int

    var displayPrice: Double {
        Double(price - discount) / 100
    }
}

extension OrderItem: Hashable {
    func hash(into hasher: inout Hasher) {
        hasher.combine(image + size)
    }
}

extension OrderItem {
    init(product: Product) {
        self.name = product.name
        self.image = product.defaultImage
        self.color = product.variants[0].color
        self.size = product.sizes[0]
        self.price = product.price
        self.discount = product.discount
        self.quantity = 1
    }

    static var unavailable: OrderItem {
        OrderItem(name: "Error",
                  image: "unavailable",
                  color: "",
                  size: "",
                  price: 0,
                  discount: 0,
                  quantity: 1)
    }
}
