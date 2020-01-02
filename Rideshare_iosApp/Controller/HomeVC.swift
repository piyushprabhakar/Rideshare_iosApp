//
//  ViewController.swift
//  Rideshare_iosApp
//
//  Created by Prabhakar, Piyush (Cognizant) on 13/12/2019.
//  Copyright © 2019 Prabhakar, Piyush (Cognizant). All rights reserved.
//

import UIKit
import MapKit

class HomeVC: UIViewController, MKMapViewDelegate {
    
    @IBOutlet weak var requestRideButton: RoundedShadowButton!
    var delegate: CenterVCDelegate?
    
    @IBOutlet weak var mapView: MKMapView!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        mapView.delegate = self
        
        
    }
    @IBAction func didTapRequestRideButton(_ sender: Any) {
        requestRideButton.animateButton(shouldLoad: true, withMessage: nil)
    }
    

}

