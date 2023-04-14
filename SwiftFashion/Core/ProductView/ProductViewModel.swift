//
//  ProductViewModel.swift
//  SwiftFashion
//
//  Created by Larry Nguyen on 4/13/23.
//

import Foundation

class ProductViewModel: ObservableObject {
    let product: Product

    init(product: Product) {
        variant = product.variants[0]
        selectedSize = product.sizes[0]
        self.product = product
    }
    
    @Published var variant: ColorVariant
    @Published var selectedSize: String
}
