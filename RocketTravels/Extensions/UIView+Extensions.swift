//
//  UIView+Extensions.swift
//  RocketTravels
//
//  Created by Rhuan Carvalho on 06/03/24.
//

import UIKit

extension UIView {
    func addShadow() {
        layer.shadowColor = UIColor.lightGray.cgColor
        layer.shadowOpacity = 1
        layer.shadowOffset = .zero
        layer.shadowRadius = 10
        layer.shadowPath = UIBezierPath(rect: self.bounds).cgPath
        layer.shouldRasterize = true
        layer.rasterizationScale = UIScreen.main.scale
        layer.cornerRadius = 10
    }
}
