//
//  URL.swift
//  APITestDemo
//
//  Created by Eunae Jang on 23/09/2019.
//  Copyright © 2019 Eunae Jang. All rights reserved.
//

import Foundation

extension URL {
    func withQueries(_ queries: [String: String]) -> URL? {
        var components = URLComponents(url: self, resolvingAgainstBaseURL: true)
        components?.queryItems = queries.compactMap{
            URLQueryItem(name: $0.0, value: $0.1)
        }
        return components?.url
    }
}
