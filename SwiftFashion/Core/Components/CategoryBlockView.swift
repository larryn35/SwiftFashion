//
//  CategoryBlockView.swift
//  SwiftFashion
//
//  Created by Larry Nguyen on 4/28/23.
//

import SwiftUI

struct CategoryBlockView: View {
    let category: ProductCategory
    private let sale = Sale.tops

    var body: some View {
        ZStack {
            Image(category.productImage)
                .resizable()
                .scaledToFit()
                .background(.black)
                .frame(height: 300)

            Color.black
                .opacity(0.6)

            Text(category.rawValue)
                .font(.largeTitle)
                .fontWeight(.semibold)
                .foregroundColor(.white)
        }
        .background(Color.black)
        .frame(maxWidth: .infinity)
        .frame(height: 140)
        .overlay {
            if category == sale.category {
                saleOverlay
            }
        }
        .clipped()
        .cornerRadius(12)
    }
}

// MARK: - Subviews

extension CategoryBlockView {
    var saleOverlay: some View {
        VStack {
            Text(sale.endDate, style: .timer)
                .font(.system(.headline, design: .monospaced))
                .foregroundColor(.white)
                .padding(10)
                .background(Color.black.opacity(0.5))
                .clipShape(RoundedRectangle(cornerRadius: 12))
                .frame(maxWidth: .infinity, alignment: .leading)

            Spacer()

            Group {
                Text(sale.description) +
                Text(sale.endDate, format: .dateTime.month(.twoDigits).day(.twoDigits))
            }
            .font(.headline)
            .foregroundColor(.white)
            .padding(.bottom)
        }
    }
}

// MARK: - Previews

struct CategoryBlockView_Previews: PreviewProvider {
    static var previews: some View {
        VStack {
            HStack {
                CategoryBlockView(category: .tops)
                CategoryBlockView(category: .dresses)
            }
            HStack {
                CategoryBlockView(category: .bottoms)
                CategoryBlockView(category: .footwear)
            }
        }
        .padding()
    }
}
