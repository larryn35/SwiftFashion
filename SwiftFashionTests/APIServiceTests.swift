//
//  APIServiceTests.swift
//  SwiftFashionTests
//
//  Created by Larry Nguyen on 4/11/23.
//

import XCTest
@testable import SwiftFashion

final class APIServiceTests: XCTestCase {
    private let apiService = MockAPIService()
    private let orderData = MockData.createOrder()

    func testProductsCanBeFetchedFromAPI() async throws {
        let endpoint = ShoppingEndpoint.fetchProducts
        let products: [Product] = try await apiService.fetch(endpoint: endpoint)

        XCTAssertEqual(products.count, 26)

        let expectedProduct = MockData.tshirtProduct
        XCTAssertEqual(products[0].category, expectedProduct.category)
        XCTAssertEqual(products[0].name, expectedProduct.name)
    }

    func testOrderCanBePlacedThroughAPI() async throws {
        let createOrderEndpoint = ShoppingEndpoint.createOrder
        let order: Order = try await apiService.sendData(endpoint: createOrderEndpoint, data: orderData)

        XCTAssertEqual(order.customerName, orderData.customerName)
        XCTAssertEqual(order.email, orderData.email)
        XCTAssertEqual(order.address, orderData.address)
        XCTAssertEqual(order.city, orderData.city)
        XCTAssertEqual(order.state, orderData.state)
        XCTAssertEqual(order.zip, orderData.zip)

        XCTAssertEqual(order.items[0].name, orderData.items[0].name)
        XCTAssertEqual(order.items[0].image, orderData.items[0].image)
        XCTAssertEqual(order.items[0].color, orderData.items[0].color)
        XCTAssertEqual(order.items[0].size, orderData.items[0].size)
        XCTAssertEqual(order.items[0].price, orderData.items[0].price)
        XCTAssertEqual(order.items[0].discount, orderData.items[0].discount)
        XCTAssertEqual(order.items[0].quantity, orderData.items[0].quantity)

        let expectedTotal = orderData.items[0].price * orderData.items[0].quantity
        let expectedSavings = orderData.items[0].discount * orderData.items[0].quantity

        XCTAssertEqual(order.total, expectedTotal)
        XCTAssertEqual(order.savings, expectedSavings)
    }

    func testOrderCanBeFetchedFromAPI() async throws {
        let orderID = try XCTUnwrap(orderData.id)

        let createOrderEndpoint = ShoppingEndpoint.createOrder
        let _: Order = try await apiService.sendData(endpoint: createOrderEndpoint, data: orderData)

        let fetchOrderEndpoint = ShoppingEndpoint.fetchOrder(orderID)
        let order: Order = try await apiService.fetch(endpoint: fetchOrderEndpoint)

        XCTAssertEqual(order.customerName, orderData.customerName)
        XCTAssertEqual(order.email, orderData.email)
        XCTAssertEqual(order.address, orderData.address)
        XCTAssertEqual(order.city, orderData.city)
        XCTAssertEqual(order.state, orderData.state)
        XCTAssertEqual(order.zip, orderData.zip)

        XCTAssertEqual(order.items[0].name, orderData.items[0].name)
        XCTAssertEqual(order.items[0].image, orderData.items[0].image)
        XCTAssertEqual(order.items[0].color, orderData.items[0].color)
        XCTAssertEqual(order.items[0].size, orderData.items[0].size)
        XCTAssertEqual(order.items[0].price, orderData.items[0].price)
        XCTAssertEqual(order.items[0].discount, orderData.items[0].discount)
        XCTAssertEqual(order.items[0].quantity, orderData.items[0].quantity)

        let expectedTotal = orderData.items[0].price * orderData.items[0].quantity
        let expectedSavings = orderData.items[0].discount * orderData.items[0].quantity

        XCTAssertEqual(order.total, expectedTotal)
        XCTAssertEqual(order.savings, expectedSavings)
    }
}
