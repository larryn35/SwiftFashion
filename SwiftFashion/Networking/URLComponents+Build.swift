//
//  URLComponents+Build.swift
//  SwiftFashion
//
//  Created by Larry Nguyen on 4/11/23.
//

import Foundation

extension URLComponents {
    static func build(from endpoint: Endpoint) -> URLComponents {
        var urlComponents = URLComponents()
        urlComponents.scheme = endpoint.scheme
        urlComponents.host = endpoint.host
        urlComponents.port = endpoint.port
        urlComponents.path = endpoint.path

        return urlComponents
    }
}
