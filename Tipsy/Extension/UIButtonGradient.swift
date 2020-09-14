//
//  UIButtonGradient.swift
//  Tipsy
//
//  Created by jose C. Hernandez on 13/09/20.
//  Copyright © 2020 The App Brewery. All rights reserved.
//

import Foundation
import UIKit

class UIButtonGradient : UIButton {
    override func layoutSubviews() {
        let layer : CAGradientLayer = CAGradientLayer()
        layer.frame.size = self.frame.size
        layer.frame.origin = CGPoint(x: 0, y: 0)
        layer.cornerRadius = CGFloat(13)
        let colorIn = UIColor(red:239/255, green:171/255, blue:39/255, alpha:1.0).cgColor
        let colorOut = UIColor(red:221/255, green:221/255, blue: 42/255, alpha:1.0).cgColor
        layer.startPoint = CGPoint(x: 0.0, y: 1.0)
        layer.endPoint = CGPoint(x: 1.0, y: 1.0)
        layer.colors = [colorOut, colorIn]
        self.layer.insertSublayer(layer, at: 0)
    }
}
