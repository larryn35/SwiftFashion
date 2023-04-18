//
//  Order.swift
//  SwiftFashion
//
//  Created by Larry Nguyen on 4/11/23.
//
//  swiftlint:disable identifier_name

import Foundation

struct Order: Codable {
    var id: UUID?
    let customerName: String
    let email: String
    let address: String
    let city: String
    let state: String
    let zip: String
    let items: [OrderItem]
    private var _total: Int?
    private var _savings: Int?

    init(id: UUID? = nil,
         customerName: String,
         email: String,
         address: String,
         city: String,
         state: String,
         zip: String,
         items: [OrderItem]) {
        self.id = id
        self.customerName = customerName
        self.email = email
        self.address = address
        self.city = city
        self.state = state
        self.zip = zip
        self.items = items
    }

    enum CodingKeys: String, CodingKey {
        case id
        case customerName
        case email
        case address
        case city
        case state
        case zip
        case items
        case _total = "total"
        case _savings = "savings"
    }
}

extension Order {
    var total: Int { _total ?? 0 }
    var savings: Int { _savings ?? 0 }
}

extension Order {
    static var inital: Order {
        Order(customerName: "",
              email: "",
              address: "",
              city: "",
              state: "",
              zip: "",
              items: [])
    }
}

enum OrderStatus {
    case invalid, valid, processing
}

enum OrderError: LocalizedError {
    case invalidForm(String)
    case processingError

    var errorDescription: String? {
        switch self {
        case .invalidForm(let reason): return reason
        case .processingError: return L10n.Error.orderProcessing
        }
    }
}
