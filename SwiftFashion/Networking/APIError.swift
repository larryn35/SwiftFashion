//
//  APIError.swift
//  SwiftFashion
//
//  Created by Larry Nguyen on 4/11/23.
//

import Foundation

enum APIError: Error, LocalizedError {
    case invalidURL, invalidResponseStatus, corruptData
    case dataTaskError(String)
    case decodingError(String)
    case encodingError(String)

    var errorDescription: String? {
        switch self {
        case .invalidURL:
            return NSLocalizedString("The endpoint URL is invalid", comment: "")
        case .invalidResponseStatus:
            return NSLocalizedString("The API failed to issue a valid response", comment: "")
        case .corruptData:
            return NSLocalizedString("The data provided appears to be corrupted", comment: "")
        case .dataTaskError(let string):
            return string
        case .decodingError(let string):
            return string
        case .encodingError(let string):
            return string
        }
    }
}
