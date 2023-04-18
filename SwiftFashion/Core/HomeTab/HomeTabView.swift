//
//  HomeTabView.swift
//  SwiftFashion
//
//  Created by Larry Nguyen on 4/11/23.
//

import SwiftUI

struct HomeTabView: View {
    @StateObject var viewModel = HomeTabViewModel()
    @State private var selectedCategory: ProductCategory = .all
    @State private var selectedLayout: ProductGridLayout = .adaptive
    @State var selectedProduct: Product?
    @Namespace private var namespace

    var body: some View {
        NavigationStack {
            ZStack(alignment: .top) {
                TabView(selection: $selectedCategory) {
                    ForEach(ProductCategory.allCases) { category in

                        // MARK: ProductGridView
                        ScrollView(showsIndicators: false) {
                            ProductsGridView(layout: $selectedLayout,
                                             selectedProduct: $selectedProduct,
                                             products: viewModel.products,
                                             category: category)
                                .padding(.top, 80)
                        }
                        .padding(.horizontal)
                        .tag(category)
                    }
                }
                .tabViewStyle(.page(indexDisplayMode: .never))

                // MARK: CategoryButtons
                categoryButtons
            }
            .toolbar {
                // MARK: Settings button
                ToolbarItem {
                    Menu {
                        Section(L10n.Home.Menu.displaySection) {
                            Button(L10n.Home.Menu.gridButton) {
                                selectedLayout = .adaptive
                            }
                            .tag(0)

                            Button(L10n.Home.Menu.rowsButton) {
                                selectedLayout = .flexible
                            }
                            .tag(1)
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
                    .tint(.primary)
                }
            }
            // MARK: NavigationTitle
            .navigationTitle(L10n.appName)
            .navigationBarTitleDisplayMode(.inline)
        }
        .sheet(item: $selectedProduct) { product in
            ProductView(product: product)
        }
    }
}

// MARK: - Subviews

extension HomeTabView {
    var categoryButtons: some View {
        ScrollView(.horizontal, showsIndicators: false) {
            HStack(spacing: 8) {
                ForEach(ProductCategory.allCases) { category in
                    Button {
                        withAnimation {
                            selectedCategory = category
                        }
                    } label: {
                        Text(category.rawValue)
                            .foregroundColor(
                                selectedCategory == category ? Color(uiColor: .systemBackground) : .secondary
                            )
                    }
                    .padding(.vertical, 4)
                    .padding(.horizontal, 12)
                    .contentShape(Rectangle())
                    .tint(.primary)
                    .background {
                        if selectedCategory == category {
                            RoundedRectangle(cornerRadius: 12)
                                .matchedGeometryEffect(id: "category", in: namespace)
                        } else {
                            RoundedRectangle(cornerRadius: 12)
                                .foregroundColor(.clear)
                        }
                    }
                }
            }
        }
        .padding(.horizontal)
        .padding(.bottom, 8)
        .background(.ultraThinMaterial)
    }
}

// MARK: - Previews

struct HomeTabView_Previews: PreviewProvider {
    static var previews: some View {
        HomeTabView(viewModel: HomeTabViewModel(apiService: MockAPIService.preview))
    }
}
