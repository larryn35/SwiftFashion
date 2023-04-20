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
        print(">> 1. Testing:", testing)
        return testing
#else
        print(">> 2. Testing: False")
        return false
#endif
    }

    static func orderUITesting() -> Bool {
#if DEBUG
        let testing = ProcessInfo.processInfo.arguments.contains(orderArgument)
        print(">> 3. Testing:", testing)
        return testing
#else
        print(">> 4. Testing: False")
        return false
#endif
    }
}
