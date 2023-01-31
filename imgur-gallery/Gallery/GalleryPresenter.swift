//
//  GalleryPresenter.swift
//  imgur-gallery
//
//  Created by Carlos Modinez on 26/01/23.
//

import Foundation

protocol GalleryPresentationLogic {
    func presentData()
}

final class GalleryPresenter: GalleryPresentationLogic {
    // MARK: - Dependencies

    weak var viewController: GalleryDisplayLogic?

    // MARK: - Presentation logic

    func presentData() {
        viewController?.displayData(GallerySceneModel.defaultModel)
    }
}
