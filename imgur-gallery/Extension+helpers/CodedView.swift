//
//  CodedView.swift
//  imgur-gallery
//
//  Created by Carlos Modinez on 26/01/23.
//

import UIKit

class CodedView: UIView {
    override init(frame: CGRect) {
        super.init(frame: frame)
        addSubviews()
        setupConstraints()
    }

    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    func addSubviews() {
        fatalError("It must to be overrided")
    }

    func setupConstraints() {
        fatalError("It must to be overrided")
    }
}
