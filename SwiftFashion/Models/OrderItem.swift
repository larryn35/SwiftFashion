//
//  OrderItem.swift
//  SwiftFashion
//
//  Created by Larry Nguyen on 4/11/23.
//

import Foundation

struct OrderItem: Codable {
    var orderID: UUID?
    let name: String
    let image: String
    let color: String
    let size: String
    let price: Int
    let discount: Int
    let quantity: Int
}
