//
//  GalleryViewController.swift
//  imgur-gallery
//
//  Created by Carlos Modinez on 26/01/23.
//

import UIKit

protocol GalleryDisplayLogic: AnyObject {
    
}

final class GalleryViewController: UIViewController {

    // MARK: - Dependencies

    private let interactor: GalleryBusinessLogic

    // MARK: - Initializer

    init(
        interactor: GalleryBusinessLogic
    ) {
        self.interactor = interactor
        super.init(nibName: nil, bundle: nil)

        view.backgroundColor = .red
    }

    // MARK: Life cycle

    override func viewDidLoad() {
        super.viewDidLoad()
    }

    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}

extension GalleryViewController: GalleryDisplayLogic {
    
}
