//
//  ValidationManagerTests.swift
//  SwiftFashionTests
//
//  Created by Larry Nguyen on 4/19/23.
//

import XCTest
@testable import SwiftFashion

final class ValidationManagerTests: XCTestCase {
    var validationManager = ValidationManager()
    var customer = Customer()

    func testBlankFirstNameShouldFail() {
        do {
            customer.name = ""
            try validationManager.validate(customer)

            customer.name = "  "
            try validationManager.validate(customer)

            XCTFail("Did not throw error for invalid first name")

        } catch let error as FieldError {
            XCTAssertEqual(error.localizedDescription, L10n.Error.invalidName)
        } catch {
            XCTFail("Did not throw error for invalid first name")
        }
    }

    func testBlankEmailShouldFail() {
        customer.name = L10n.Placeholder.name

        do {
            customer.email = ""
            try validationManager.validate(customer)

            customer.email = "  "
            try validationManager.validate(customer)

            XCTFail("Did not throw error for invalid email")

        } catch let error as FieldError {
            XCTAssertEqual(error.localizedDescription, L10n.Error.invalidEmail)
        } catch {
            XCTFail("Did not throw error for invalid email")
        }
    }

    func testInvalidEmailShouldFail() {
        customer.name = L10n.Placeholder.name

        customer.email = "john@email"
        validateEmail(for: customer)

        customer.email = "johnemail.com"
        validateEmail(for: customer)

        customer.email = "johnemail@.com"
        validateEmail(for: customer)

        customer.email = "@email.com"
        validateEmail(for: customer)
    }

    func testBlankAddressShouldFail() {
        customer.name = L10n.Placeholder.name
        customer.email = L10n.Placeholder.email

        do {
            customer.address = ""
            try validationManager.validate(customer)

            customer.address = "  "
            try validationManager.validate(customer)

            XCTFail("Did not throw error for invalid address")

        } catch let error as FieldError {
            XCTAssertEqual(error.localizedDescription, L10n.Error.invalidAddress)
        } catch {
            XCTFail("Did not throw error for invalid address")
        }
    }

    func testBlankCityShouldFail() {
        customer.name = L10n.Placeholder.name
        customer.email = L10n.Placeholder.email
        customer.address = L10n.Placeholder.address

        do {
            customer.city = ""
            try validationManager.validate(customer)

            customer.city = "  "
            try validationManager.validate(customer)

            XCTFail("Did not throw error for invalid city")

        } catch let error as FieldError {
            XCTAssertEqual(error.localizedDescription, L10n.Error.invalidCity)
        } catch {
            XCTFail("Did not throw error for invalid city")
        }
    }

    func testBlankStateShouldFail() {
        customer.name = L10n.Placeholder.name
        customer.email = L10n.Placeholder.email
        customer.address = L10n.Placeholder.address
        customer.city = L10n.Placeholder.city

        do {
            customer.state = ""
            try validationManager.validate(customer)

            customer.state = "  "
            try validationManager.validate(customer)

            XCTFail("Did not throw error for invalid state")

        } catch let error as FieldError {
            XCTAssertEqual(error.localizedDescription, L10n.Error.invalidState)
        } catch {
            XCTFail("Did not throw error for invalid state")
        }
    }

    func testInvalidStateCharacterCountShouldFail() {
        customer.name = L10n.Placeholder.name
        customer.email = L10n.Placeholder.email
        customer.address = L10n.Placeholder.address
        customer.city = L10n.Placeholder.city

        do {
            customer.state = "C"
            try validationManager.validate(customer)

            customer.state = "CAA"
            try validationManager.validate(customer)

            XCTFail("Did not throw error for invalid state")
        } catch let error as FieldError {
            XCTAssertEqual(error.localizedDescription, L10n.Error.invalidState)
        } catch {
            XCTFail("Did not throw error for invalid state")
        }
    }

    func testBlankZipShouldFail() {
        customer.name = L10n.Placeholder.name
        customer.email = L10n.Placeholder.email
        customer.address = L10n.Placeholder.address
        customer.city = L10n.Placeholder.city
        customer.state = L10n.Placeholder.state

        do {
            customer.zip = ""
            try validationManager.validate(customer)

            customer.zip = "  "
            try validationManager.validate(customer)

            XCTFail("Did not throw error for invalid zip")

        } catch let error as FieldError {
            XCTAssertEqual(error.localizedDescription, L10n.Error.invalidZip)
        } catch {
            XCTFail("Did not throw error for invalid zip")
        }
    }

    func testValidCustomerShouldPass() {
        customer.name = L10n.Placeholder.name
        customer.email = L10n.Placeholder.email
        customer.address = L10n.Placeholder.address
        customer.city = L10n.Placeholder.city
        customer.state = L10n.Placeholder.state
        customer.zip = L10n.Placeholder.zip

        do {
            try validationManager.validate(customer)
        } catch {
            XCTFail("Error thrown for valid customer")
        }
    }
}

extension ValidationManagerTests {
    func validateEmail(for customer: Customer) {
        do {
            try validationManager.validate(customer)
            XCTFail("Did not throw error for invalid email")
        } catch let error as FieldError {
            XCTAssertEqual(error.localizedDescription, L10n.Error.invalidEmail)
        } catch {
            XCTFail("Did not throw error for invalid email")
        }
    }
}
