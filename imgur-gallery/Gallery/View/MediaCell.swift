//
//  MediaCell.swift
//  imgur-gallery
//
//  Created by Carlos Modinez on 26/01/23.
//

import UIKit

final class MediaCell: UICollectionViewCell {
    static var identifier = "MediaCell"
    
    // MARK: - View components
    
    private let testView: UIView = {
        let view = UIView()
        let colors: [UIColor] = [.red, .lightGray, .blue, .cyan, .green, .magenta]
        
        view.backgroundColor = colors.randomElement()
        view.layer.cornerRadius = 10
        return view
    }()

    private let imageView: UIImageView = UIImageView()

    // MARK: - initializer

    override init(frame: CGRect) {
        super.init(frame: frame)
        initLayout()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    // MARK: - View builder
    
    private func initLayout() {
        addSubviews()
        setupConstraints()
    }

    private func addSubviews() {
        contentView.addSubview(testView)
    }

    private func setupConstraints() {
        testView.anchor(
            top: (contentView.topAnchor, 0),
            bottom: (contentView.bottomAnchor, 0),
            leading: (contentView.leadingAnchor, 0),
            trailing: (contentView.trailingAnchor, 0)
        )
    }
}
