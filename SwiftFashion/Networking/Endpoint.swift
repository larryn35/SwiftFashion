//
//  Endpoint.swift
//  SwiftFashion
//
//  Created by Larry Nguyen on 4/11/23.
//

import Foundation

enum ShoppingEndpoint: Endpoint {
    case fetchProducts
    case fetchOrder(UUID)
    case createOrder
    case createOrderItems
    case deleteOrder(UUID)
}

extension ShoppingEndpoint {
    var path: String {
        switch self {
        case .fetchProducts: return "/products"
        case .fetchOrder(let orderID): return "/orders/\(orderID)"
        case .deleteOrder(let orderID): return "/orders/delete/\(orderID)"
        case .createOrder: return "/orders"
        case .createOrderItems: return "/order-items"
        }
    }

    var header: [String: String]? {
        switch self {
        default: return ["Content-Type": "application/json"]
        }
    }

    var keyEncodingStrategy: JSONEncoder.KeyEncodingStrategy {
        switch self {
        default: return .useDefaultKeys
        }
    }

    var keyDecodingStrategy: JSONDecoder.KeyDecodingStrategy {
        switch self {
        default: return .useDefaultKeys
        }
    }
}

// MARK: - Endpoint Protocol

protocol Endpoint {
    var scheme: String { get }
    var host: String { get }
    var port: Int? { get }
    var path: String { get }
    var header: [String: String]? { get }
    var keyEncodingStrategy: JSONEncoder.KeyEncodingStrategy { get }
    var keyDecodingStrategy: JSONDecoder.KeyDecodingStrategy { get }
}

extension Endpoint {
    var scheme: String { "http" }
    var host: String { "localhost" }
    var port: Int? { 8080 }
}
