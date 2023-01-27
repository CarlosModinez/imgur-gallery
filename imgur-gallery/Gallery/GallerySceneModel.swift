//
//  SceneModel.swift
//  imgur-gallery
//
//  Created by Carlos Modinez on 27/01/23.
//

import UIKit

typealias MediaSize = CGSize

enum GallerySceneModel {
    enum ScreenState {
        case loading
        case loaded([Media])
    }

    enum MediaStatus {
        case loading
        case loaded(image: UIImage?)
    }

    struct ViewData {
        let state: ScreenState
    }

    struct Media {
        let size: CGSize
        let status: (MediaStatus)
    }

    // TODO: - Remove when presenter done
    static var defaultModel = ViewData(state: .loaded([
        .init(size: .init(width: 300, height: 300), status: .loading),
        .init(size: .init(width: 300, height: 300), status: .loaded(image: UIImage(named: "logo.png"))),
        .init(size: .init(width: 300, height: 300), status: .loading),
        .init(size: .init(width: 300, height: 300), status: .loading),
        .init(size: .init(width: 300, height: 300), status: .loaded(image: UIImage(named: "logo.png"))),
        .init(size: .init(width: 400, height: 1000), status: .loading),
        .init(size: .init(width: 100, height: 800), status: .loaded(image: UIImage(named: "logo.png"))),
        .init(size: .init(width: 900, height: 200), status: .loaded(image: UIImage(named: "logo.png"))),
        .init(size: .init(width: 900, height: 100), status: .loading),
        .init(size: .init(width: 300, height: 300), status: .loading),
        .init(size: .init(width: 300, height: 300), status: .loaded(image: UIImage(named: "logo.png"))),
        .init(size: .init(width: 300, height: 300), status: .loading),
        .init(size: .init(width: 300, height: 300), status: .loading),
        .init(size: .init(width: 300, height: 300), status: .loaded(image: UIImage(named: "logo.png"))),
        .init(size: .init(width: 400, height: 1000), status: .loading),
        .init(size: .init(width: 100, height: 800), status: .loaded(image: UIImage(named: "logo.png"))),
        .init(size: .init(width: 900, height: 200), status: .loaded(image: UIImage(named: "logo.png"))),
        .init(size: .init(width: 900, height: 100), status: .loading),
        .init(size: .init(width: 300, height: 300), status: .loading),
        .init(size: .init(width: 300, height: 300), status: .loaded(image: UIImage(named: "logo.png"))),
        .init(size: .init(width: 300, height: 300), status: .loading),
        .init(size: .init(width: 300, height: 300), status: .loading),
        .init(size: .init(width: 300, height: 300), status: .loaded(image: UIImage(named: "logo.png"))),
        .init(size: .init(width: 400, height: 1000), status: .loading),
        .init(size: .init(width: 100, height: 800), status: .loaded(image: UIImage(named: "logo.png"))),
        .init(size: .init(width: 900, height: 200), status: .loaded(image: UIImage(named: "logo.png"))),
        .init(size: .init(width: 900, height: 100), status: .loading),
        .init(size: .init(width: 300, height: 300), status: .loading),
        .init(size: .init(width: 300, height: 300), status: .loaded(image: UIImage(named: "logo.png"))),
        .init(size: .init(width: 300, height: 300), status: .loading),
        .init(size: .init(width: 300, height: 300), status: .loading),
        .init(size: .init(width: 300, height: 300), status: .loaded(image: UIImage(named: "logo.png"))),
        .init(size: .init(width: 400, height: 1000), status: .loading),
        .init(size: .init(width: 100, height: 800), status: .loaded(image: UIImage(named: "logo.png"))),
        .init(size: .init(width: 900, height: 200), status: .loaded(image: UIImage(named: "logo.png"))),
        .init(size: .init(width: 900, height: 100), status: .loading),
        .init(size: .init(width: 300, height: 300), status: .loading),
        .init(size: .init(width: 300, height: 300), status: .loaded(image: UIImage(named: "logo.png"))),
        .init(size: .init(width: 300, height: 300), status: .loading),
        .init(size: .init(width: 300, height: 300), status: .loading),
        .init(size: .init(width: 300, height: 300), status: .loaded(image: UIImage(named: "logo.png"))),
        .init(size: .init(width: 400, height: 1000), status: .loading),
        .init(size: .init(width: 100, height: 800), status: .loaded(image: UIImage(named: "logo.png"))),
        .init(size: .init(width: 900, height: 200), status: .loaded(image: UIImage(named: "logo.png"))),
        .init(size: .init(width: 900, height: 100), status: .loading),
        .init(size: .init(width: 300, height: 300), status: .loading),
        .init(size: .init(width: 300, height: 300), status: .loaded(image: UIImage(named: "logo.png"))),
        .init(size: .init(width: 300, height: 300), status: .loading),
        .init(size: .init(width: 300, height: 300), status: .loading),
        .init(size: .init(width: 300, height: 300), status: .loaded(image: UIImage(named: "logo.png"))),
        .init(size: .init(width: 400, height: 1000), status: .loading),
        .init(size: .init(width: 100, height: 800), status: .loaded(image: UIImage(named: "logo.png"))),
        .init(size: .init(width: 900, height: 200), status: .loaded(image: UIImage(named: "logo.png"))),
        .init(size: .init(width: 900, height: 100), status: .loading)
    ]))
}
