//
//  CheckoutView.swift
//  SwiftFashion
//
//  Created by Larry Nguyen on 4/14/23.
//

import SwiftUI

struct CheckoutView: View {
    @EnvironmentObject var cartManager: CartManager

    var body: some View {
        OrderFormView()
    }
}

struct CheckoutView_Previews: PreviewProvider {
    static var previews: some View {
        CheckoutView()
            .environmentObject(CartManager())
    }
}
