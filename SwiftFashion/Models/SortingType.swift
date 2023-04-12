//
//  SortingType.swift
//  SwiftFashion
//
//  Created by Larry Nguyen on 4/11/23.
//

import Foundation

enum SortingType: String, CaseIterable {
    case newest = "Newest"
    case lowToHigh = "Price: low to high"
    case highToLow = "Price: high to low"
    case aToZ = "Name: A to Z"
    case zToA = "Name: Z to A"
}
