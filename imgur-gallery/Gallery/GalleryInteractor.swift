//
//  GalleryInteractor.swift
//  imgur-gallery
//
//  Created by Carlos Modinez on 26/01/23.
//

import Foundation

protocol GalleryBusinessLogic {
    func onViewDidLoad()
}

final class GalleryInteractor {
    // MARK: - Dependencies

    private let presenter: GalleryPresentationLogic

    // MARK: - Initializer

    init(
        presenter: GalleryPresentationLogic
    ) {
        self.presenter = presenter

        let service = NetworkService()
        service.request(networkRequest: ImgurRequest.getImagesInformation) { (result: Result<ImgurEntity, NetworkError>) in
            
        }
    }
}

extension GalleryInteractor: GalleryBusinessLogic {
    func onViewDidLoad() {
        presenter.presentData()
    }
}
