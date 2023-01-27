//
//  GalleryConfigurator.swift
//  imgur-gallery
//
//  Created by Carlos Modinez on 26/01/23.
//

import UIKit

protocol GalleryConfiguratorProtocol {
    
}

final class GalleryConfigurator {
    func resolveNavigationController() -> UINavigationController {
        let presenter = GalleryPresenter()
        let interactor = GalleryInteractor(presenter: presenter)
        let viewController = GalleryViewController(interactor: interactor)

        let navigationController = UINavigationController(rootViewController: viewController)
        presenter.viewController = viewController

        return navigationController
    }
}
