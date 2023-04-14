//
//  ColorVariant.swift
//  SwiftFashion
//
//  Created by Larry Nguyen on 4/10/23.
//

import Foundation

struct ColorVariant: Identifiable, Codable {
    let id: UUID
    let color: String
    let hex: String
    let image: String
}

extension ColorVariant: Equatable {
    static var unavailable: ColorVariant = ColorVariant(id: UUID(),
                                                        color: "",
                                                        hex: "",
                                                        image: "")
}
