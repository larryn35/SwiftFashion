//
//  ProductsGridView.swift
//  SwiftFashion
//
//  Created by Larry Nguyen on 4/11/23.
//

import SwiftUI

struct ProductsGridView: View {
    @Binding var gridItemLayout: ProductGridLayout
    let products: [Product]

    init(layout: Binding<ProductGridLayout>, products: [Product], category: ProductCategory) {
        self._gridItemLayout = layout

        if category == .all {
            self.products = products
        } else {
            self.products = products.filter({ $0.category == category })
        }
    }

    let saleCategory: ProductCategory = .tops

    var body: some View {
        let layout = gridItemLayout.isAdaptive ? AnyLayout(VStackLayout()) : AnyLayout(HStackLayout())

        LazyVGrid(columns: gridItemLayout.columns, spacing: 20) {
            ForEach(products) { product in
                layout {

                    // MARK: Product Image
                    ZStack {
                        Color(uiColor: .systemGray6)
                            .zIndex(0)

                        Image(product.defaultImage)
                            .resizable()
                            .scaledToFit()
                    }
                    .frame(maxWidth: .infinity)
                    .clipShape(RoundedRectangle(cornerRadius: 12))

                    // MARK: Product Info
                    VStack(alignment: .leading, spacing: 4) {
                        Text(product.name)
                            .font(.footnote)
                            .fontWeight(.semibold)
                            .lineLimit(1)

                        Text(product.currentPrice, format: .currency(code: "USD"))
                            .font(.subheadline)

                        // Description + colors if in flexible layout
                        if !gridItemLayout.isAdaptive {
                            VStack(alignment: .leading) {
                                Text(product.description)
                                    .font(.footnote)
                                    .lineLimit(2)
                                    .padding(.bottom)

                                Text(product.variants.count > 1 ? "Colors" : "Color")
                                    .font(.footnote)

                                ColorsRow(product: product)
                                    .transition(
                                        AnyTransition.opacity.combined(with: .move(edge: .bottom))
                                    )
                            }
                            .padding(.top)
                        }
                    }
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .padding([.horizontal, .bottom])
                }
                .frame(height: 200)
                .overlay(
                    RoundedRectangle(cornerRadius: 12)
                        .strokeBorder(Color(UIColor.systemGray6), lineWidth: 2)
                )
            }
        }
    }
}

// MARK: - Subviews

extension ProductsGridView {
    struct ColorsRow: View {
        let product: Product

        var body: some View {
            HStack {
                ForEach(product.variants) { variant in
                    RoundedRectangle(cornerRadius: 4)
                        .fill(Color(hex: variant.hex))
                        .frame(width: 20, height: 20)
                }
            }
        }
    }
}

// MARK: - Previews

struct ProductsGridView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            ScrollView {
                ProductsGridView(layout: .constant(.adaptive), products: PreviewData.products(), category: .all)
                    .padding()
            }
            .previewDisplayName("Adaptive layout")

            ScrollView {
                ProductsGridView(layout: .constant(.flexible), products: PreviewData.products(), category: .all)
                    .padding()
            }
            .previewDisplayName("Flexible layout")
        }
    }
}
