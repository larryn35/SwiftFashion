//
//  ValidationManager.swift
//  SwiftFashion
//
//  Created by Larry Nguyen on 4/19/23.
//

import Foundation
import RegexBuilder

struct ValidationManager: ValidationProtocol {

    private let emailRegex = Regex {
        /^/
        OneOrMore(.whitespace.inverted)
        "@"
        OneOrMore(.whitespace.inverted)
        "."
        OneOrMore(.whitespace.inverted)
        /$/
      }
      .anchorsMatchLineEndings()

    func validate(_ customer: Customer) throws {
        if customer.name.trimmingCharacters(in: .whitespacesAndNewlines).isEmpty {
            throw FieldError.name
        }

        if customer.email.firstMatch(of: emailRegex) == nil {
            throw FieldError.email
        }

        if customer.address.trimmingCharacters(in: .whitespacesAndNewlines).isEmpty {
            throw FieldError.address
        }

        if customer.city.trimmingCharacters(in: .whitespacesAndNewlines).isEmpty {
            throw FieldError.city
        }

        if customer.state.count != 2 {
            throw FieldError.state
        }

        if customer.zip.trimmingCharacters(in: .whitespacesAndNewlines).isEmpty {
            throw FieldError.zip
        }
    }
}

enum FieldError: LocalizedError {
    case name, email, address, city, state, zip

    var errorDescription: String? {
        switch self {
        case .name: return L10n.Error.invalidName
        case .email: return L10n.Error.invalidEmail
        case .address: return L10n.Error.invalidAddress
        case .city: return L10n.Error.invalidCity
        case .state: return L10n.Error.invalidState
        case .zip: return L10n.Error.invalidZip
        }
    }
}

protocol ValidationProtocol {
    func validate(_ customer: Customer) throws
}
