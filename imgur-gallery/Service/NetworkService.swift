//
//  NetworkService.swift
//  imgur-gallery
//
//  Created by Carlos Modinez on 27/01/23.
//

import Foundation
import UIKit

enum NetworkError: Error {
    case network
    case responseParse
}

enum HTTPMethod: String {
    case GET, POST, DELETE, PUT
}

protocol NetworkRequest {
    var url: URL? { get }
    var method: HTTPMethod { get }
    var body: [String: Any]? { get }
    var headers: [String: String]? { get }
}

final class NetworkService {
    func request<T: Codable>(networkRequest: NetworkRequest, handler: @escaping (Result<T, NetworkError>) -> Void) {
        guard let url = networkRequest.url else { return }
        var request = URLRequest(url: url)
        request.httpMethod = networkRequest.method.rawValue
        networkRequest.headers?.forEach { request.addValue($0.value, forHTTPHeaderField: $0.key) }

        if let body = networkRequest.body {
            do {
                request.httpBody = try JSONSerialization.data(withJSONObject: body, options: .prettyPrinted)
            } catch {
                debugPrint("Body decoder failed")
            }
        }

        URLSession.shared.dataTask(with: request) { data, response, error in
            if error != nil {
                handler(.failure(.network))
                return
            }

            guard let data = data else {
                handler(.failure(.network))
                return
            }

            do {
                let decodedData = try JSONDecoder().decode(T.self, from: data)
                handler(.success(decodedData))
            } catch {
                handler(.failure(.responseParse))
            }
        }.resume()
    }
}
