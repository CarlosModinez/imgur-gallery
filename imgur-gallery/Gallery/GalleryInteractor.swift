//
//  GalleryInteractor.swift
//  imgur-gallery
//
//  Created by Carlos Modinez on 26/01/23.
//

import Foundation

protocol GalleryBusinessLogic {
    
}

final class GalleryInteractor: GalleryBusinessLogic {
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
