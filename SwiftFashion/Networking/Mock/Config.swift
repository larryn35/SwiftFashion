//
//  Config.swift
//  SwiftFashion
//
//  Created by Larry Nguyen on 4/19/23.
//

import Foundation

struct Config {
    static var productArgument = "Product-UI-Testing"
    static var orderArgument = "Order-UI-Testing"

    static func productUITesting() -> Bool {
#if DEBUG
        let testing = ProcessInfo.processInfo.arguments.contains(productArgument)
        return testing
#else
        return false
#endif
    }

    static func orderUITesting() -> Bool {
#if DEBUG
        let testing = ProcessInfo.processInfo.arguments.contains(orderArgument)
        return testing
#else
        return false
#endif
    }
}
