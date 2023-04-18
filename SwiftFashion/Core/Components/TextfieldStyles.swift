//
//  TextfieldStyles.swift
//  SwiftFashion
//
//  Created by Larry Nguyen on 4/14/23.
//
//  swiftlint:disable identifier_name

import SwiftUI

struct PrimaryTextFieldStyle: TextFieldStyle {
    var label: String?

    func _body(configuration: TextField<Self._Label>) -> some View {
        VStack(alignment: .leading, spacing: 6) {
            if let label {
                Text(label)
                    .font(.subheadline)
                    .fontWeight(.semibold)
            }

            configuration
                .padding(12)
                .background(Color(uiColor: .systemFill).opacity(0.4))
                .clipShape(RoundedRectangle(cornerRadius: 12))
        }
    }
}

struct TextfieldStyles_Previews: PreviewProvider {
    static var previews: some View {
        VStack(spacing: 40) {
            TextField("Placeholder", text: .constant(""))
                .textFieldStyle(PrimaryTextFieldStyle(label: "Label"))

            TextField("Hello", text: .constant("Text"))
                .textFieldStyle(PrimaryTextFieldStyle())
        }
        .padding()
    }
}
