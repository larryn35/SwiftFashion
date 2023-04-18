//
//  PaymentButton.swift
//  SwiftFashion
//
//  Created by Larry Nguyen on 4/14/23.
//

import SwiftUI

struct PaymentButton: View {
    var total: Double
    var status: OrderStatus
    var action: () -> Void

    @ViewBuilder
    var label: some View {
        switch status {
        case .invalid, .valid:
            Text(L10n.Button.completeOrder) + Text(total, format: .currency(code: "USD"))

        case .processing:
            HStack(spacing: 20) {
                Text(L10n.Button.proccessingOrder)
                ProgressView()
                    .tint(Color(uiColor: .systemBackground))
            }
        }
    }

    var body: some View {
        Button(action: action) {
            label
        }
        .buttonStyle(PrimaryButtonStyle())
        .disabled(status == .processing)
    }
}

struct PaymentButton_Previews: PreviewProvider {
    static var previews: some View {
        VStack {
            PaymentButton(total: 120, status: .valid, action: {})
            PaymentButton(total: 120, status: .invalid, action: {})
            PaymentButton(total: 120, status: .processing, action: {})
        }
        .padding()
    }
}
