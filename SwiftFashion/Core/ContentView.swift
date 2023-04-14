//
//  ContentView.swift
//  SwiftFashion
//
//  Created by Larry Nguyen on 4/7/23.
//

import SwiftUI

struct ContentView: View {
    @StateObject private var cartManager = CartManager()

    var body: some View {
        TabView {
            HomeTabView()
                .tabItem {
                    Label("Home", systemImage: "house")
                }

            Text("Cart")
                .tabItem {
                    Label("Cart", systemImage: "cart")
                }
        }
        .tint(.primary)
        .environmentObject(cartManager)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
