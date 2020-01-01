//
//  RoundedShadowView.swift
//  Rideshare_iosApp
//
//  Created by piyush prabhakar on 01/01/20.
//  Copyright © 2020 Prabhakar, Piyush (Cognizant). All rights reserved.
//

import UIKit

class RoundedShadowView: UIView {

    override func awakeFromNib() {
       
        setupView()
    }
    
    func setupView(){
        self.layer.cornerRadius = 5.0
        self.layer.shadowOpacity = 0.3
        self.layer.shadowColor = UIColor.darkGray.cgColor
        self.layer.shadowRadius = 5.0
        self.layer.shadowOffset = CGSize(width: 0, height: 5)
        
    }
}
