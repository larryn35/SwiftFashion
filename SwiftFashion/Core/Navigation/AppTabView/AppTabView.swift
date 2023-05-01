//
//  AppTabView.swift
//  SwiftFashion
//
//  Created by Larry Nguyen on 4/26/23.
//

import SwiftUI

struct AppTabView: View {
    @StateObject private var cartManager = CartManager()

    var body: some View {
        TabView {
            HomeTabView()
                .tabItem {
                    Label(L10n.Tab.home, systemImage: L10n.Sfs.house)
                }

            CartTabView()
                .tabItem {
                    Label(L10n.Tab.cart, systemImage: L10n.Sfs.cart)
                }
        }
        .tint(.primary)
        .environmentObject(cartManager)
    }
}

struct AppTabView_Previews: PreviewProvider {
    static var previews: some View {
        AppTabView()
    }
}
