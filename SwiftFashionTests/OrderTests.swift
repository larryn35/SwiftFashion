//
//  OrderTests.swift
//  SwiftFashionTests
//
//  Created by Larry Nguyen on 4/11/23.
//

import XCTest
@testable import SwiftFashion

final class OrderTests: XCTestCase {
    private var order = MockData.order

    func testOrderSummaryJSONCanBeDecoded() throws {
        let expectedOrder = MockData.createOrder()

        XCTAssertEqual(order.customerName, expectedOrder.customerName)
        XCTAssertEqual(order.email, expectedOrder.email)
        XCTAssertEqual(order.address, expectedOrder.address)
        XCTAssertEqual(order.city, expectedOrder.city)
        XCTAssertEqual(order.state, expectedOrder.state)
        XCTAssertEqual(order.zip, expectedOrder.zip)

        XCTAssertEqual(order.items[0].name, expectedOrder.items[0].name)
        XCTAssertEqual(order.items[0].image, expectedOrder.items[0].image)
        XCTAssertEqual(order.items[0].color, expectedOrder.items[0].color)
        XCTAssertEqual(order.items[0].size, expectedOrder.items[0].size)
        XCTAssertEqual(order.items[0].price, expectedOrder.items[0].price)
        XCTAssertEqual(order.items[0].discount, expectedOrder.items[0].discount)
        XCTAssertEqual(order.items[0].quantity, expectedOrder.items[0].quantity)

        let expectedTotal = expectedOrder.items[0].price * expectedOrder.items[0].quantity
        let expectedSavings = expectedOrder.items[0].discount * expectedOrder.items[0].quantity

        XCTAssertEqual(order.total, expectedTotal)
        XCTAssertEqual(order.savings, expectedSavings)
    }
}
