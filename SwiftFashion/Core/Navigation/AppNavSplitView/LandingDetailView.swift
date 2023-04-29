//
//  LandingDetailView.swift
//  SwiftFashion
//
//  Created by Larry Nguyen on 4/27/23.
//

import SwiftUI

struct LandingDetailView: View {
    @Binding var selectedCategory: ProductCategory?

    let categories: [ProductCategory] = [.tops, .dresses, .bottoms, .footwear]

    var body: some View {
        VStack {
            HStack {
                VStack(alignment: .leading, spacing: 20) {
                    Text(L10n.Landing.title)
                        .multilineTextAlignment(.leading)
                        .font(.system(size: 72,
                                      weight: .semibold,
                                      design: .serif))

                    Text(L10n.Landing.text)
                        .font(.title)

                    HStack {
                        Button {
                            selectedCategory = .all
                        } label: {
                            Text(L10n.Button.shop)
                                .padding(.horizontal)
                        }
                        .buttonStyle(PrimaryButtonStyle())

                        Button {

                        } label: {
                            Text(L10n.Button.about)
                                .padding(.horizontal)
                        }
                        .buttonStyle(SecondaryButtonStyle())
                    }
                }

                ZStack {
                    Asset.Tops.polo4EC67C
                        .swiftUIImage
                        .resizable()
                        .scaledToFit()
                        .offset(x: 0, y: -60)

                    Asset.Tops.jersey4F72CC
                        .swiftUIImage
                        .resizable()
                        .scaledToFit()
                        .offset(x: -30, y: 60)
                }
            }

            Divider()
                .padding(.vertical, 40)

            LazyVGrid(columns: [GridItem(.flexible()), GridItem(.flexible())]) {
                ForEach(categories, id: \.self) { category in
                    CategoryBlockView(category: category)
                }
            }
        }
        .padding()
    }
}

// MARK: - Previews

struct LandingDetailView_Previews: PreviewProvider {
    static var previews: some View {
        LandingDetailView(selectedCategory: .constant(nil))
    }
}
