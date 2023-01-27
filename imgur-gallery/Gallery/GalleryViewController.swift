//
//  GalleryViewController.swift
//  imgur-gallery
//
//  Created by Carlos Modinez on 26/01/23.
//

import UIKit

protocol GalleryDisplayLogic: AnyObject {
    func displayData(_ viewData: GallerySceneModel.ViewData)
}

final class GalleryViewController: UIViewController, GalleryDisplayLogic {
    // MARK: - Constants
    
    private enum Constants {
        static let sideMargin = 18.0
        static let spaceBetweenCells = 12.0
        static let imagesPerLine = 4.0
    }

    // MARK: - Dependencies

    private let interactor: GalleryBusinessLogic

    // MARK: - Properties

    private var midias = [GallerySceneModel.Media]()
    private var contentView: GalleryViewProtocol? {
        view as? GalleryViewProtocol
    }

    // MARK: - Initializer

    init(
        interactor: GalleryBusinessLogic
    ) {
        self.interactor = interactor
        super.init(nibName: nil, bundle: nil)
    }

    // MARK: Life cycle

    override func viewDidLoad() {
        super.viewDidLoad()
        interactor.onViewDidLoad()
        contentView?.collection.dataSource = self
        contentView?.collection.delegate = self
    }

    override func loadView() {
        view = GalleryView()
    }

    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    // MARK: - GalleryDisplayLogic

    func displayData(_ viewData: GallerySceneModel.ViewData) {
        if case let .loaded(midias) = viewData.state {
            self.midias = midias
        }

        contentView?.configurate(viewData.state)
        contentView?.collection.reloadData()
    }
}

extension GalleryViewController: UICollectionViewDataSource, UICollectionViewDelegate {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        midias.count
    }

    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        guard let cell = contentView?.collection.dequeueReusableCell(withReuseIdentifier: MediaCell.identifier, for: indexPath) as? MediaCell else {
            return UICollectionViewCell()
        }
        return cell
    }
}

extension GalleryViewController: UICollectionViewDelegateFlowLayout {
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        let cellWidth = (UIScreen.main.bounds.width - Constants.imagesPerLine * Constants.spaceBetweenCells) / Constants.imagesPerLine - Constants.sideMargin / Constants.imagesPerLine
        return .init(width: cellWidth, height: cellWidth)
    }

    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, insetForSectionAt section: Int) -> UIEdgeInsets {
        .init(top: .zero, left: Constants.sideMargin, bottom: .zero, right: Constants.sideMargin)
    }
}
