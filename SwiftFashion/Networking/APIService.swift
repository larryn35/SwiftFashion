//
//  APIService.swift
//  SwiftFashion
//
//  Created by Larry Nguyen on 4/11/23.
//

import Foundation

enum HTTPMethod: String {
    case POST, GET, PUT, DELETE
}

struct APIService: APIServiceProtocol {
    func fetch<T: Decodable>(endpoint: Endpoint) async throws -> T {
        let urlComponents = URLComponents.build(from: endpoint)

        guard let url = urlComponents.url else { throw APIError.invalidURL }

        var request = URLRequest(url: url)
        request.httpMethod = HTTPMethod.GET.rawValue
        request.allHTTPHeaderFields = endpoint.header

        do {
            let (data, response) = try await URLSession.shared.data(for: request)

            guard
                let httpResponse = response as? HTTPURLResponse,
                (200 ..< 300).contains(httpResponse.statusCode)
            else {
                throw APIError.invalidResponseStatus
            }

            do {
                let decoder = JSONDecoder()
                decoder.keyDecodingStrategy = endpoint.keyDecodingStrategy
                let result = try decoder.decode(T.self, from: data)
                return result
            } catch {
                throw APIError.decodingError(error.localizedDescription)
            }

        } catch {
            throw APIError.dataTaskError(error.localizedDescription)
        }
    }

    func sendData<Input: Codable, Output: Decodable>(endpoint: Endpoint, data: Input) async throws -> Output {
        let urlComponents = URLComponents.build(from: endpoint)

        guard let url = urlComponents.url else { throw APIError.invalidURL }

        var request = URLRequest(url: url)
        request.httpMethod = HTTPMethod.POST.rawValue
        request.allHTTPHeaderFields = endpoint.header

        do {
            let encoder = JSONEncoder()
            encoder.keyEncodingStrategy = endpoint.keyEncodingStrategy
            request.httpBody = try encoder.encode(data)
        } catch {
            throw APIError.encodingError(error.localizedDescription)
        }

        let (data, response) = try await URLSession.shared.data(for: request)

        guard
            let httpResponse = response as? HTTPURLResponse,
            (200 ..< 300).contains(httpResponse.statusCode)
        else {
            throw APIError.invalidResponseStatus
        }

        do {
            let decoder = JSONDecoder()
            decoder.keyDecodingStrategy = endpoint.keyDecodingStrategy
            return try decoder.decode(Output.self, from: data)
        } catch {
            throw APIError.decodingError(error.localizedDescription)
        }
    }

    func delete(endpoint: Endpoint) async throws {
        let urlComponents = URLComponents.build(from: endpoint)

        guard let url = urlComponents.url else { throw APIError.invalidURL }

        var request = URLRequest(url: url)
        request.httpMethod = HTTPMethod.DELETE.rawValue
        request.allHTTPHeaderFields = endpoint.header

        let (_, response) = try await URLSession.shared.data(for: request)

        guard
            let httpResponse = response as? HTTPURLResponse,
            (200 ..< 300).contains(httpResponse.statusCode)
        else {
            throw APIError.invalidResponseStatus
        }
    }
}

// MARK: - APIService Protocol

protocol APIServiceProtocol {
    func fetch<T: Decodable>(endpoint: Endpoint) async throws -> T
    func sendData<T: Codable>(endpoint: Endpoint, data: T) async throws -> Data
    func delete(endpoint: Endpoint) async throws
}
