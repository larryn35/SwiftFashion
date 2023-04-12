//
//  ProductGridLayout.swift
//  SwiftFashion
//
//  Created by Larry Nguyen on 4/11/23.
//

import SwiftUI

enum ProductGridLayout {
    case adaptive, flexible

    var columns: [GridItem] {
        switch self {
        case .adaptive: return [GridItem(.adaptive(minimum: 140))]
        case .flexible: return [GridItem(.flexible())]
        }
    }

    var isAdaptive: Bool {
        self == .adaptive
    }
}
