//
//  UIView.swift
//  imgur-gallery
//
//  Created by Carlos Modinez on 26/01/23.
//

import UIKit

extension UIView {
    func anchor(
        top: (NSLayoutYAxisAnchor, constant: CGFloat)? = nil,
        bottom: (NSLayoutYAxisAnchor, constant: CGFloat)? = nil,
        leading: (NSLayoutXAxisAnchor, constant: CGFloat)? = nil,
        trailing: (NSLayoutXAxisAnchor, constant: CGFloat)? = nil,
        centerY: (NSLayoutYAxisAnchor, constant: CGFloat)? = nil,
        centerX: (NSLayoutXAxisAnchor, constant: CGFloat)? = nil
    ) {
        if let top = top {
            self.topAnchor.constraint(equalTo: top.0, constant: top.constant).isActive = true
        }
        
        if let bottom = bottom {
            self.bottomAnchor.constraint(equalTo: bottom.0, constant: -bottom.constant).isActive = true
        }
        
        if let leading = leading {
            self.leadingAnchor.constraint(equalTo: leading.0, constant: leading.constant).isActive = true
        }
        
        if let trailing = trailing {
            self.trailingAnchor.constraint(equalTo: trailing.0, constant: trailing.constant).isActive = true
        }
        
        if let centerY = centerY {
            self.centerYAnchor.constraint(equalTo: centerY.0, constant: centerY.constant).isActive = true
        }
        
        if let centerX = centerX {
            self.centerXAnchor.constraint(equalTo: centerX.0, constant: centerX.constant).isActive = true
        }
    }
}
