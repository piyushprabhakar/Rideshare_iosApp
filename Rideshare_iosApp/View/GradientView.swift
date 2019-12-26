//
//  GradientView.swift
//  Rideshare_iosApp
//
//  Created by piyush prabhakar on 15/12/19.
//  Copyright © 2019 Prabhakar, Piyush (Cognizant). All rights reserved.
//

import UIKit

let gradient = CAGradientLayer()

class GradientView: UIView {

    override func awakeFromNib() {
        setupGradientView()
    }
    
    func setupGradientView() {
        gradient.frame = self.bounds
        gradient.colors = [UIColor.white.cgColor, UIColor.init(white: 1.0, alpha: 0.0)]
        gradient.startPoint = CGPoint.zero
        gradient.endPoint = CGPoint(x: 0, y: 1)
        gradient.locations = [0.8, 1.0]
        self.layer.addSublayer(gradient)
    }
}
