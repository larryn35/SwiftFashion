//
//  HomeTabViewModel.swift
//  SwiftFashion
//
//  Created by Larry Nguyen on 4/11/23.
//

import Foundation

final class HomeTabViewModel: ObservableObject {
    enum FetchStatus {
        case error, inProgress, success
    }

    @Published var products: [Product] = []
    @Published var fetchStatus: FetchStatus = .inProgress

    let apiService: APIServiceProtocol

    init(apiService: APIServiceProtocol = APIService()) {
        self.apiService = apiService
        fetchProducts()
    }

    func fetchProducts() {
        fetchStatus = .inProgress

        Task { @MainActor in
            do {
                products = try await apiService.fetch(endpoint: ShoppingEndpoint.fetchProducts)
                fetchStatus = .success
            } catch {
                fetchStatus = .error
            }
        }
    }

    func sortProducts(by type: SortingType) {
        switch type {
        case .newest:
            products.sort(by: { $0.updatedAt > $1.updatedAt })
        case .lowToHigh:
            products.sort(by: { $0.currentPrice < $1.currentPrice })
        case .highToLow:
            products.sort(by: { $0.currentPrice > $1.currentPrice })
        case .aToZ:
            products.sort(by: { $0.name < $1.name })
        case .zToA:
            products.sort(by: { $0.name > $1.name })
        }
    }
}
