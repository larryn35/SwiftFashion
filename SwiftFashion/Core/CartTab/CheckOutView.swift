//
//  CheckOutView.swift
//  SwiftFashion
//
//  Created by Larry Nguyen on 4/14/23.
//

import SwiftUI

struct CheckOutView: View {
    @EnvironmentObject var cartManager: CartManager

    var body: some View {
        OrderFormView()
    }
}

struct CheckOutView_Previews: PreviewProvider {
    static var previews: some View {
        CheckOutView()
            .environmentObject(CartManager())
    }
}
