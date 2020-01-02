//
//  CenterVCDelegate.swift
//  Rideshare_iosApp
//
//  Created by piyush prabhakar on 01/01/20.
//  Copyright © 2020 Prabhakar, Piyush (Cognizant). All rights reserved.
//

import UIKit

protocol CenterVCDelegate {
    func toggleLeftPanel()
    func addLeftPanelVCieController()
    func animateLeftPanel(shoudExpand: Bool)
}
