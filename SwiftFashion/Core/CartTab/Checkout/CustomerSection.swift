//
//  CustomerSection.swift
//  SwiftFashion
//
//  Created by Larry Nguyen on 4/17/23.
//

import SwiftUI

struct CustomerSection: View {
    enum FocusedField {
        case name, email, address, city, state, zip
    }

    @Binding var customer: Customer
    @FocusState private var focusedField: FocusedField?

    var body: some View {
        VStack(spacing: 16) {
            TextField(L10n.Placeholder.name, text: $customer.name)
                .textContentType(.name)
                .textInputAutocapitalization(.words)
                .keyboardType(.alphabet)
                .textFieldStyle(PrimaryTextFieldStyle(label: L10n.Label.name))
                .submitLabel(.next)
                .focused($focusedField, equals: .name)

            TextField(L10n.Placeholder.email, text: $customer.email)
                .textContentType(.emailAddress)
                .textInputAutocapitalization(.never)
                .keyboardType(.emailAddress)
                .autocorrectionDisabled()
                .textFieldStyle(PrimaryTextFieldStyle(label: L10n.Label.email))
                .submitLabel(.next)
                .focused($focusedField, equals: .email)

            TextField(L10n.Placeholder.address, text: $customer.address)
                .textContentType(.fullStreetAddress)
                .textInputAutocapitalization(.words)
                .textFieldStyle(PrimaryTextFieldStyle(label: L10n.Label.address))
                .submitLabel(.next)
                .focused($focusedField, equals: .address)

            TextField(L10n.Placeholder.city, text: $customer.city)
                .textContentType(.streetAddressLine1)
                .textInputAutocapitalization(.words)
                .keyboardType(.alphabet)
                .textFieldStyle(PrimaryTextFieldStyle(label: L10n.Label.city))
                .submitLabel(.next)
                .focused($focusedField, equals: .city)

            HStack {
                TextField(L10n.Placeholder.state, text: $customer.state)
                    .textContentType(.addressState)
                    .keyboardType(.alphabet)
                    .textFieldStyle(PrimaryTextFieldStyle(label: L10n.Label.state))
                    .submitLabel(.next)
                    .focused($focusedField, equals: .state)

                TextField(L10n.Placeholder.zip, text: $customer.zip)
                    .textContentType(.postalCode)
                    .keyboardType(.numberPad)
                    .submitLabel(.send)
                    .textFieldStyle(PrimaryTextFieldStyle(label: L10n.Label.zip))
                    .focused($focusedField, equals: .zip)
            }
        }
        .toolbar {
            ToolbarItemGroup(placement: .keyboard) {
                Spacer()

                Button(L10n.Button.done) {
                    focusedField = nil
                }
                .tint(.primary)
            }
        }
        .onSubmit {
            switch focusedField {
            case .name:
                focusedField = .email
            case .email:
                focusedField = .address
            case .address:
                focusedField = .city
            case .city:
                focusedField = .state
            case .state:
                focusedField = .zip
            default:
                focusedField = nil
            }
        }
    }
}

struct CustomerSection_Previews: PreviewProvider {
    static var previews: some View {
        CustomerSection(customer: .constant(.init()))
            .padding()
    }
}
