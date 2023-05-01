//
//  Sale.swift
//  SwiftFashion
//
//  Created by Larry Nguyen on 4/28/23.
//

import Foundation

struct Sale {
    let category: ProductCategory
    let discount: Int
    let description: String
    let image: String
    let endDate: Date

    static let tops = Sale(category: .tops,
                           discount: 20,
                           description: "20% off tops. Sale ends ",
                           image: Asset.Tops.turtleneck65676C.name,
                           endDate: Date.getSaleEndDate())
}

extension Date {
    // Returns midnight after next
    static func getSaleEndDate() -> Date {
        let twoDaysFromToday = Date().advanced(by: 172_800) // 48 hrs
        return Calendar.current.startOfDay(for: twoDaysFromToday)
            .advanced(by: -1)
    }
}
