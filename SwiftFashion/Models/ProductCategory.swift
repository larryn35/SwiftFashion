//
//  ProductCategory.swift
//  SwiftFashion
//
//  Created by Larry Nguyen on 4/10/23.
//

import Foundation

enum ProductCategory: String, Decodable {
    case all = "All"
    case tops = "Tops"
    case bottoms = "Bottoms"
    case dresses = "Dresses"
    case footwear = "Footwear"

    init(from decoder: Decoder) throws {
        let value = try decoder.singleValueContainer().decode(String.self).capitalized
        self = ProductCategory(rawValue: value) ?? .all
    }
}
