//
//  ProductView.swift
//  SwiftFashion
//
//  Created by Larry Nguyen on 4/13/23.
//

import SwiftUI

struct ProductView: View {
    let product: Product

    @State private var selectedVariant: ColorVariant = .unavailable
    @State private var selectedSize: String = ""

    @Environment(\.dismiss) var dismiss
    @Namespace private var namespace

    private let columns = Array(repeating: GridItem(.flexible()), count: 6)

    // MARK: - Body

    var body: some View {

        NavigationStack {
            ScrollView(showsIndicators: false) {
                VStack(alignment: .leading, spacing: 16) {

                    // MARK: Image
                    ZStack(alignment: .bottomTrailing) {
                        Color(uiColor: .systemGray6)

                        Image(selectedVariant.image)
                            .resizable()
                            .scaledToFit()

                        if product.variants.count > 1 {
                            colorOptions
                        }
                    }
                    .cornerRadius(12)
                    .padding(.top)

                    // MARK: Info

                    VStack(alignment: .leading) {
                        Text(product.name)
                            .font(.title)

                        // Price
                        HStack(spacing: 14) {
                            Text(product.currentPrice, format: .currency(code: "USD"))
                                .font(.title3)

                            if let originalPrice = product.originalPrice {
                                Text(originalPrice, format: .currency(code: "USD"))
                                    .strikethrough(color: .red)
                                    .opacity(0.8)
                                    .font(.title3)
                            }
                        }
                    }

                    // Color
                    VStack(alignment: .leading) {
                        Text(L10n.ProductView.color)
                            .font(.headline)
                            .fontWeight(.semibold)

                        Text(selectedVariant.color)
                    }

                    // Size
                    VStack(alignment: .leading, spacing: 6) {
                        Text(L10n.ProductView.size)
                            .font(.headline)
                            .fontWeight(.semibold)

                        sizeOptions
                    }

                    // Description
                    VStack(alignment: .leading) {
                        Text(L10n.ProductView.description)
                            .font(.headline)
                            .fontWeight(.semibold)
                            .padding(.bottom, 4)

                        Text(product.description)
                            .multilineTextAlignment(.leading)
                    }
                    .padding(.top)

                    Spacer().frame(height: 200)
                }
            }
            .frame(maxHeight: .infinity)
            .padding(.horizontal)

            // MARK: Add to cart button
            .overlay(alignment: .bottom) {
                cartButton
                    .padding()
            }
            .edgesIgnoringSafeArea(.bottom)

            // MARK: NavigationBar
            .navigationTitle(L10n.ProductView.title)
            .navigationBarTitleDisplayMode(.inline)
            .toolbar {
                ToolbarItem(placement: .cancellationAction) {
                    Button {
                        dismiss()
                    } label: {
                        Image(systemName: L10n.Sfs.cancel)
                            .symbolVariant(.circle)
                            .symbolVariant(.fill)
                    }
                    .tint(.primary)
                }
            }
        }
        .interactiveDismissDisabled()
        .onAppear {
            selectedSize = product.sizes[0]
            selectedVariant = product.variants[0]
        }
    }
}

// MARK: - Subviews

extension ProductView {
    var colorOptions: some View {
        VStack {
            ForEach(product.variants) { variant in
                Button {
                    selectedVariant = variant
                } label: {
                    RoundedRectangle(cornerRadius: 12)
                        .fill(Color(hex: variant.hex))
                        .opacity(selectedVariant == variant ? 1 : 0.8)
                        .frame(width: 40, height: 40)
                        .overlay(
                            RoundedRectangle(cornerRadius: 12)
                                .strokeBorder(.primary, lineWidth: 2)
                                .opacity(selectedVariant == variant ? 1 : 0)
                        )
                }
                .tint(.primary)
            }
        }
        .padding()
    }

    var sizeOptions: some View {
        LazyVGrid(columns: columns, alignment: .leading) {
            ForEach(product.sizes, id: \.self) { size in
                Button(size) {
                    selectedSize = size
                }
                .buttonStyle(SizeButtonStyle(selectedSize: $selectedSize,
                                             clothingSize: size))
                .frame(height: 50)
                .tint(.primary)
            }
        }
    }

    var cartButton: some View {
        Button {

        } label: {
            Text(L10n.ProductView.add)
                .frame(maxWidth: .infinity)
        }
        .foregroundColor(Color(uiColor: .systemBackground))
        .padding()
        .background(RoundedRectangle(cornerRadius: 20))
        .padding(.vertical)
    }
}

// MARK: - Previews
struct ProductDetailView_Previews: PreviewProvider {
    static var previews: some View {
        let product = PreviewData.products()[0]
        ProductView(product: product)
    }
}
