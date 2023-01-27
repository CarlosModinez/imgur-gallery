//
//  ImgurService.swift
//  imgur-gallery
//
//  Created by Carlos Modinez on 27/01/23.
//

import Foundation

enum ImgurRequest: NetworkRequest {
    case getImagesInformation
    case getImage(urlString: String)

    var url: URL? {
        switch self {
        case .getImagesInformation:
            return URL(string: "https://api.imgur.com/3/gallery/search/?q=cats")
        case let .getImage(url):
            return URL(string: url)
        }
    }

    var method: HTTPMethod {
        .GET
    }

    var body: [String: Any]? {
        nil
    }

    var headers: [String: String]? {
        switch self {
        case .getImagesInformation:
            return ["Authorization": "Client ID: 1ceddedc03a5d71"]
        case .getImage:
            return nil
        }
    }
}
