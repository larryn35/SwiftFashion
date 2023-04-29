//
//  AppNavSplitView.swift
//  SwiftFashion
//
//  Created by Larry Nguyen on 4/26/23.
//

import SwiftUI

struct AppNavSplitView: View {
    @StateObject var viewModel = HomeViewModel()
    @StateObject private var cartManager = CartManager()

    @State private var selectedLayout: ProductGridLayout = .adaptive
    @State private var selectedCategory: ProductCategory?
    @State private var selectedProduct: Product?

    var body: some View {
        NavigationSplitView {
            SidebarView(selectedCategory: $selectedCategory)
                .navigationBarTitle(L10n.appName)
        } detail: {
            NavigationStack {
                Group {
                    if let selectedCategory {
                        ScrollView {
                            ProductsGridView(layout: selectedLayout,
                                             selectedProduct: $selectedProduct,
                                             products: viewModel.products,
                                             category: selectedCategory)
                            .padding(.horizontal)

                        }
                        .navigationTitle(selectedCategory.rawValue)

                    } else {
                        LandingDetailView(selectedCategory: $selectedCategory)
                    }
                }
                .toolbar {
                    ToolbarItem(placement: .navigationBarLeading) {
                        gridLayoutMenu
                    }

                    ToolbarItem(placement: .primaryAction) {
                        NavigationLink {
                            CartTabView()
                                .environmentObject(cartManager)
                        } label: {
                            Image(systemName: L10n.Sfs.cart)
                        }
                    }
                }
            }
        }
        .tint(.primary)
        .sheet(item: $selectedProduct) { product in
            ProductView(product: product)
                .environmentObject(cartManager)
        }
    }
}

// MARK: - Subviews

extension AppNavSplitView {
    var gridLayoutMenu: some View {
        Menu {
            Section(L10n.Home.Menu.displaySection) {
                Button(L10n.Home.Menu.gridButton) {
                    selectedLayout = .adaptive
                }

                Button(L10n.Home.Menu.rowsButton) {
                    selectedLayout = .flexible
                }
            }

            Section(L10n.Home.Menu.sortSection) {
                ForEach(SortingType.allCases, id: \.self) { type in
                    Button(type.rawValue) {
                        viewModel.sortProducts(by: type)
                    }
                }
            }
        } label: {
            Image(systemName: L10n.Sfs.settings)
        }
    }
}

// MARK: - Previews

struct AppNavSplitView_Previews: PreviewProvider {
    static var previews: some View {
        AppNavSplitView(viewModel: HomeViewModel(apiService: MockAPIService()))
    }
}
