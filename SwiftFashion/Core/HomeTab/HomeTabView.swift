//
//  HomeTabView.swift
//  SwiftFashion
//
//  Created by Larry Nguyen on 4/11/23.
//

import SwiftUI

struct HomeTabView: View {
    @StateObject private var viewModel: HomeTabViewModel

    init(viewModel: HomeTabViewModel = HomeTabViewModel()) {
        _viewModel = StateObject(wrappedValue: viewModel)
    }

    var body: some View {
        ScrollView {
            VStack {
                ForEach(viewModel.products, id: \.id) { product in
                    Text(product.name)
                    Text(product.description)
                    Text(product.price, format: .currency(code: "usd"))
                }
            }
        }
        .task {
            await viewModel.fetchProducts()
        }
    }
}

struct HomeTabView_Previews: PreviewProvider {
    static var previews: some View {
        HomeTabView(viewModel: HomeTabViewModel(apiService: MockAPIService.preview))
    }
}
