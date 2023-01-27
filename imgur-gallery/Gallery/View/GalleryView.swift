//
//  GalleryView.swift
//  imgur-gallery
//
//  Created by Carlos Modinez on 26/01/23.
//

import UIKit

protocol GalleryViewProtocol {
    var collection: UICollectionView { get set }
    
    func configurate(_ state: GallerySceneModel.ScreenState)
}

final class GalleryView: CodedView, GalleryViewProtocol {
    // MARK: - View components

    var collection: UICollectionView = {
        let layout = UICollectionViewFlowLayout()
        layout.sectionHeadersPinToVisibleBounds = false
        layout.estimatedItemSize = UICollectionViewFlowLayout.automaticSize
        layout.minimumInteritemSpacing = 10
        layout.minimumLineSpacing = 10

        let collection = UICollectionView(frame: .zero, collectionViewLayout: layout)
        collection.register(MediaCell.self, forCellWithReuseIdentifier: MediaCell.identifier)
        collection.contentInsetAdjustmentBehavior = .always
        collection.backgroundColor = .clear
        return collection
    }()

    private let loadingView: UIView = {
        let view = UIView()
        view.backgroundColor = .lightGray

        let loadIndicator = UIActivityIndicatorView()
        loadIndicator.startAnimating()

        view.addSubview(loadIndicator)
        loadIndicator.anchor(
            centerY: (view.centerYAnchor, 0),
            centerX: (view.centerXAnchor, 0)
        )

        return view
    }()

    // MARK: - Properties

    

    // MARK: - Initializer

    override init(
        frame: CGRect
    ) {
        super.init(frame: frame)
    }

    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    // MARK: - View builder

    override func addSubviews() {
        addSubview(collection)
        addSubview(loadingView)

        collection.isHidden = true
    }

    override func setupConstraints() {
        collection.fillSuperview()
        loadingView.fillSuperview()
    }

    // MARK: - GalleryViewProtocol

    func configurate(_ state: GallerySceneModel.ScreenState) {
        switch state {
        case .loading:
            collection.isHidden = true
            loadingView.isHidden = false

        case .loaded:
            collection.isHidden = false
            loadingView.isHidden = true
        }
    }
}
