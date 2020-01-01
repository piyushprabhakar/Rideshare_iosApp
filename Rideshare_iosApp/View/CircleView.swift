//
//  CircleView.swift
//  Rideshare_iosApp
//
//  Created by piyush prabhakar on 01/01/20.
//  Copyright © 2020 Prabhakar, Piyush (Cognizant). All rights reserved.
//

import UIKit

class CircleView: UIView {

    @IBInspectable var borderColor: UIColor? {
        didSet {
            setupView()
        }
    }
    
    override  func awakeFromNib() {
        setupView()
    }
    
    func setupView(){
        self.layer.cornerRadius = self.frame.width/2
        self.layer.borderWidth = 1.5
        self.layer.borderColor = borderColor?.cgColor
    }
}
