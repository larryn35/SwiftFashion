//
//  MockAPIService.swift
//  SwiftFashion
//
//  Created by Larry Nguyen on 4/11/23.
//

import Foundation

struct MockAPIService: APIServiceProtocol {

    func fetch<T>(endpoint: Endpoint) async throws -> T where T: Decodable {
        if case .fetchProducts = endpoint as? ShoppingEndpoint {
           return Bundle.main.decode(T.self, from: "Product.json")

        } else if case .fetchOrder = endpoint as? ShoppingEndpoint {
            return Bundle.main.decode(T.self, from: "Order.json")

        } else {
            throw APIError.invalidURL
        }
    }

    func sendData<Input: Codable, Output: Decodable>(endpoint: Endpoint, data: Input) async throws -> Output {
        if case .createOrder = endpoint as? ShoppingEndpoint {
            return Bundle.main.decode(Output.self, from: "Order.json")
        } else {
            throw APIError.invalidURL
        }
    }

    func delete(endpoint: Endpoint) async throws {}
}
