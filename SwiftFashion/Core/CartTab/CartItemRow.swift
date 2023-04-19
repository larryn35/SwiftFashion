//
//  CartItemRow.swift
//  SwiftFashion
//
//  Created by Larry Nguyen on 4/14/23.
//

import SwiftUI

struct CartItemRow: View {
    let item: OrderItem
    let quantity: Int

    var updateHandler: (OrderItem, Int) -> Void

    private let quantityOptions = Array(0...10)

    var body: some View {

        HStack {
            Image(item.image)
                .resizable()
                .scaledToFit()
                .frame(height: 80)

            VStack(alignment: .leading) {
                Text(item.name)
                    .multilineTextAlignment(.leading)
                    .font(.headline)
                    .fontWeight(.semibold)

                Text(L10n.Cart.itemSize(item.size))
                    .font(.caption)
                    .padding(.bottom, 8)

                Text(item.displayPrice, format: .currency(code: "USD"))
                    .fontWeight(.semibold)
            }
            .frame(maxWidth: .infinity, alignment: .leading)

            Menu {
                ForEach(quantityOptions, id: \.self) { quantity in
                    Button {
                        updateHandler(item, quantity)
                    } label: {
                        Text(quantity, format: .number)
                    }
                }
            } label: {
                Text(quantity, format: .number)
                    .fixedSize(horizontal: true, vertical: false)
                    .frame(width: 40)
                    .foregroundColor(Color(.systemBackground))
                    .padding(8)
                    .background(Color.primary)
                    .clipShape(Capsule())
            }
        }
    }
}

// MARK: - Previews

struct CartItemRow_Previews: PreviewProvider {
    static func update(_ item: OrderItem, _ int: Int) {}

    static var previews: some View {
        CartItemRow(item: MockData.createShirtOrderItem(),
                    quantity: 1,
                    updateHandler: update)
        .padding()
    }
}
