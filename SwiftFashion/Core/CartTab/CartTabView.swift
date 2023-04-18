//
//  CartTabView.swift
//  SwiftFashion
//
//  Created by Larry Nguyen on 4/14/23.
//

import SwiftUI

struct CartTabView: View {
    @EnvironmentObject var cartManager: CartManager
    @Environment(\.dismiss) var dismiss

    @State private var showCheckoutView: Bool = false

    var body: some View {
        NavigationStack {
            VStack {
                if cartManager.cart.isEmpty {
                    Image(systemName: L10n.Sfs.cart)
                        .font(.largeTitle)
                        .padding(30)
                        .foregroundColor(Color(uiColor: .systemBackground))
                        .background(Circle().fill(Color.primary))

                    Text(L10n.Cart.emptyCart)
                        .font(.headline)
                        .padding(.top)

                } else {
                    List {
                        ForEach(cartManager.cart.elements, id: \.key) { (item, quantity) in
                            CartItemRow(item: item,
                                        quantity: quantity,
                                        updateHandler: cartManager.updateQuantity)
                        }
                        .onDelete(perform: cartManager.removeItem)
                    }
                    .listStyle(.plain)

                    VStack {
                        HStack {
                            Text(L10n.Cart.total)

                            Text(cartManager.total, format: .currency(code: "USD"))
                        }

                        Button {
                            showCheckoutView.toggle()
                        } label: {
                            Text(L10n.Button.checkOut)
                                .frame(maxWidth: .infinity)
                        }
                        .foregroundColor(Color(uiColor: .systemBackground))
                        .padding()
                        .background(RoundedRectangle(cornerRadius: 20))
                        .padding(.vertical)
                    }
                    .padding()
                }
            }
            .navigationTitle(L10n.Cart.title)
            .sheet(isPresented: $showCheckoutView, onDismiss: cartManager.clearOrder) {
                CheckoutView()
            }
        }
    }
}

struct CartTabView_Previews: PreviewProvider {
    static var previews: some View {
        CartTabView()
            .environmentObject(CartManager(apiService: MockAPIService()))
    }
}
