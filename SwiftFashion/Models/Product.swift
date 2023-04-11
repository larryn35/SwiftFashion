//
//  Product.swift
//  SwiftFashion
//
//  Created by Larry Nguyen on 4/10/23.
//

import Foundation

struct Product: Decodable {
    let id: UUID
    let category: ProductCategory
    let name: String
    let description: String
    let price: Int
    let discount: Int
    let sizes: [String]
    let variants: [ColorVariant]
}
