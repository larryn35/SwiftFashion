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

extension ProductCategory: Identifiable, CaseIterable {
    var id: String {
        self.rawValue
    }

    var productImage: String {
        switch self {
        case .all: return Asset.Tops.tshirt35455E.name
        case .tops: return Asset.Tops.signaturepolo526594.name
        case .bottoms: return Asset.Bottoms.swimmingshorts3EBBD8.name
        case .dresses: return Asset.Dresses.sundressFFD53E.name
        case .footwear: return Asset.Footwear.runningshoes9AD7B6.name
        }
    }
}
