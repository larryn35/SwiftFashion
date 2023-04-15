//
//  MockAPIService+Preview.swift
//  SwiftFashion
//
//  Created by Larry Nguyen on 4/14/23.
//

import Foundation

extension MockAPIService {
    static var preview: MockAPIService {
        MockAPIService(productJSON: PreviewData.productJSON)
    }
}
