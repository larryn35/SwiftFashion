//
//  HomeTabViewModel.swift
//  SwiftFashion
//
//  Created by Larry Nguyen on 4/11/23.
//

import Foundation

final class HomeTabViewModel: ObservableObject {
    @Published var products: [Product] = []
    var allProducts: [Product] = []

    let apiService: APIServiceProtocol

    init(apiService: APIServiceProtocol = APIService()) {
        self.apiService = apiService
        fetchProducts()
    }

    func fetchProducts() {
        Task { @MainActor in
            do {
                allProducts = try await apiService.fetch(endpoint: ShoppingEndpoint.fetchProducts)
                products = allProducts
            } catch {
                print("Unable to fetch products:", error.localizedDescription)
            }
        }
    }

    func sortProducts(by type: SortingType) {
        switch type {
        case .newest:
            products = allProducts.sorted(by: { $0.updatedAt > $1.updatedAt })
        case .lowToHigh:
            products = allProducts.sorted(by: { $0.currentPrice < $1.currentPrice })
        case .highToLow:
            products = allProducts.sorted(by: { $0.currentPrice > $1.currentPrice })
        case .aToZ:
            products = allProducts.sorted(by: { $0.name < $1.name })
        case .zToA:
            products = allProducts.sorted(by: { $0.name > $1.name })
        }
    }
}
