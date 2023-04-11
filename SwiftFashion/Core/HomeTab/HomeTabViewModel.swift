//
//  HomeTabViewModel.swift
//  SwiftFashion
//
//  Created by Larry Nguyen on 4/11/23.
//

import Foundation

class HomeTabViewModel: ObservableObject {
    @Published var products: [Product] = []

    let apiService: APIServiceProtocol

    init(apiService: APIServiceProtocol = APIService()) {
        self.apiService = apiService
    }

    @MainActor
    func fetchProducts() async {
        do {
            products = try await apiService.fetch(endpoint: ShoppingEndpoint.fetchProducts)
        } catch {
            print("Unable to fetch products:", error.localizedDescription)
        }
    }
}
