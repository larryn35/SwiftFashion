//
//  OrderFormView.swift
//  SwiftFashion
//
//  Created by Larry Nguyen on 4/14/23.
//

import SwiftUI

struct OrderFormView: View {
    @EnvironmentObject var cartManager: CartManager
    @Environment(\.dismiss) var dismiss

    var body: some View {
        NavigationStack {
            VStack {
                ScrollView(showsIndicators: false) {
                    VStack(spacing: 16) {

                        CustomerSection(customer: $cartManager.customer)

                        VStack(alignment: .leading, spacing: 12) {
                            Text(L10n.OrderForm.payment)
                                .font(.headline)
                                .fontWeight(.semibold)
                                .padding(.top)

                            HStack {
                                Image(systemName: L10n.Sfs.creditCard)
                                    .font(.title)
                                Text(L10n.Placeholder.ccNumber)
                                Spacer()
                                Text(L10n.Placeholder.expDate)
                            }
                            .padding()
                            .background(Color(uiColor: .systemFill).opacity(0.4))
                            .clipShape(RoundedRectangle(cornerRadius: 12))
                        }
                    }
                    .padding(.vertical, 20)
                }

                PaymentButton(total: cartManager.total,
                              status: cartManager.orderStatus,
                              action: submitOrder)
                .padding(.vertical)
            }
            .padding(.horizontal)
            .navigationTitle(L10n.OrderForm.title)
            .navigationBarTitleDisplayMode(.inline)
            .toolbar {
                ToolbarItem(placement: .cancellationAction) {
                    Button(L10n.Button.cancel) {
                        dismiss()
                    }
                    .tint(.primary)
                }
            }
            .alert(isPresented: $cartManager.showAlert, error: cartManager.orderError) {
                Button(L10n.Button.ok) {
                    cartManager.dismissError()
                }
            }
        }
        .interactiveDismissDisabled()
    }
}

// MARK: - Functions

extension OrderFormView {
    private func submitOrder() {
        Task {
            await cartManager.submitOrder()
        }
    }
}

// MARK: - Previews

struct OrderFormView_Previews: PreviewProvider {
    static var previews: some View {
        OrderFormView()
            .environmentObject(CartManager(apiService: MockAPIService.preview))
    }
}
