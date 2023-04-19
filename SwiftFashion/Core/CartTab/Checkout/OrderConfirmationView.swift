//
//  OrderConfirmationView.swift
//  SwiftFashion
//
//  Created by Larry Nguyen on 4/17/23.
//

import SwiftUI

struct OrderConfirmationView: View {
    @Environment(\.dismiss) var dismiss

    let order: Order

    var body: some View {
        ViewThatFits(in: [.vertical]) {
            VStack {
                content

                Spacer()

                Button(L10n.Button.done) {
                    dismiss()
                }
                .buttonStyle(PrimaryButtonStyle())
            }

            ScrollView(showsIndicators: false) {
                content
                Spacer().frame(height: 120)
            }
            .overlay(alignment: .bottom) {
                Button(L10n.Button.done) {
                    dismiss()
                }
                .buttonStyle(PrimaryButtonStyle())
            }
        }
        .padding([.horizontal, .top])
    }
}

extension OrderConfirmationView {
    var content: some View {
        VStack {
            Text(L10n.OrderConfirmation.thankYou)
                .textCase(.uppercase)
                .font(.title)
                .fontWeight(.bold)

            if let item = order.items.first {
                Image(item.image)
                    .resizable()
                    .scaledToFit()
                    .frame(width: 200)
                    .frame(maxWidth: .infinity)
                    .padding(.vertical)
            }

            VStack(alignment: .leading) {
                Text(L10n.OrderConfirmation.message(order.customerName))
                    .padding(.bottom)

                if let orderID = order.id {
                    Text(L10n.OrderConfirmation.orderNumber)
                        .font(.subheadline)
                        .fontWeight(.semibold)

                    Text(orderID.uuidString)
                        .font(.callout)
                        .padding(.bottom)
                }

                Text(L10n.OrderConfirmation.orderDate)
                    .font(.subheadline)
                    .fontWeight(.semibold)

                Text(Date().formatted(date: .abbreviated, time: .shortened))
            }
        }
    }
}

struct OrderConfirmationView_Previews: PreviewProvider {
    static var previews: some View {
        OrderConfirmationView(order: MockData.createOrder())
    }
}
