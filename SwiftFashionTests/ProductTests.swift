//
//  ProductTests.swift
//  SwiftFashionTests
//
//  Created by Larry Nguyen on 4/10/23.
//

import XCTest
@testable import SwiftFashion

final class ProductTests: XCTestCase {
    private var products: [Product]!

    override func setUpWithError() throws {
        let decoder = JSONDecoder()
        decoder.dateDecodingStrategy = .iso8601
        let jsonData = try XCTUnwrap(TestData.productJSON.data(using: .utf8))
        products = try decoder.decode([Product].self, from: jsonData)
    }

    func testProductJSONCanBeDecoded() throws {
        XCTAssertEqual(products.count, 26)

        let expectedProduct = TestData.tshirtProduct
        XCTAssertEqual(products[0].category, expectedProduct.category)
        XCTAssertEqual(products[0].name, expectedProduct.name)
        XCTAssertEqual(products[0].description, expectedProduct.description)
        XCTAssertEqual(products[0].price, expectedProduct.price)
        XCTAssertEqual(products[0].discount, expectedProduct.discount)
        XCTAssertEqual(products[0].sizes, expectedProduct.sizes)

        let expectedVariant = expectedProduct.variants[0]
        XCTAssertEqual(products[0].variants[0].color, expectedVariant.color)
        XCTAssertEqual(products[0].variants[0].hex, expectedVariant.hex)
        XCTAssertEqual(products[0].variants[0].image, expectedVariant.image)
    }

    func testCategoryIsCorrectlyAssignedToProducts() throws {
        let tops = products.filter({ $0.category == .tops })
        XCTAssertEqual(tops.count, 8)

        let dresses = products.filter({ $0.category == .dresses })
        XCTAssertEqual(dresses.count, 4)

        let bottoms = products.filter({ $0.category == .bottoms })
        XCTAssertEqual(bottoms.count, 6)

        let footwear = products.filter({ $0.category == .footwear })
        XCTAssertEqual(footwear.count, 8)
    }
}
