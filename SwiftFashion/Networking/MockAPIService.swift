//
//  MockAPIService.swift
//  SwiftFashion
//
//  Created by Larry Nguyen on 4/11/23.
//

import Foundation

struct MockAPIService: APIServiceProtocol {
    var productJSON: String?
    var orderJSON: String?

    func fetch<T>(endpoint: Endpoint) async throws -> T where T: Decodable {
        if case .fetchProducts = endpoint as? ShoppingEndpoint,
           let productJSON,
           let productData = productJSON.data(using: .utf8) {

            let decoder = JSONDecoder()
            let result = try decoder.decode(T.self, from: productData)
            return result

        } else if case .fetchOrder = endpoint as? ShoppingEndpoint,
                  let orderJSON,
                  let orderData = orderJSON.data(using: .utf8) {

            let decoder = JSONDecoder()
            let result = try decoder.decode(T.self, from: orderData)
            return result

        } else {
            throw APIError.invalidURL
        }
    }

    func sendData<Input: Codable, Output: Decodable>(endpoint: Endpoint, data: Input) async throws -> Output {
        if case .createOrder = endpoint as? ShoppingEndpoint,
           let orderJSON,
           let orderData = orderJSON.data(using: .utf8) {

            let decoder = JSONDecoder()
            let result = try decoder.decode(Output.self, from: orderData)
            return result

        } else {
            throw APIError.invalidURL
        }
    }

    func delete(endpoint: Endpoint) async throws {}
}
