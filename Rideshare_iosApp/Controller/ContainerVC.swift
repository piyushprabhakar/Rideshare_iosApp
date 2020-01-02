//
//  ContainerVC.swift
//  Rideshare_iosApp
//
//  Created by piyush prabhakar on 01/01/20.
//  Copyright © 2020 Prabhakar, Piyush (Cognizant). All rights reserved.
//

import UIKit

enum SlideOutState {
    case collapsed
    case leftPanelExtended
}

enum ShowWhichVC {
    case homeVC
    case paymentVC
}

class ContainerVC: UIViewController {

    var showVC: ShowWhichVC = .homeVC
    var homeVC: HomeVC!
    var currentState: SlideOutState = .collapsed
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    func initCenter(screen: ShowWhichVC){
        
        var persentingController: UIViewController
        showVC = screen
        
        if homeVC == nil{
            homeVC = UIStoryboard.homeVC()
            homeVC.delegate = (self as! CenterVCDelegate)
        }
    }
 
 
}

extension HomeVC: CenterVCDelegate {
    
    func toggleLeftPanel(){
        //let notalreadyExpanded = 
    }
    func addLeftPanelVCieController(){
        
    }
    func animateLeftPanel(shoudExpand: Bool){
        
    }
}

private extension UIStoryboard {
      
    class func mainStoryboard() -> UIStoryboard {
        return UIStoryboard(name: "Main", bundle: Bundle.main)
    }
    
    class func leftViewController() -> LeftSliderPanelVC? {
        return mainStoryboard().instantiateViewController(withIdentifier: "LeftSliderPanelVC") as? LeftSliderPanelVC
    }
    
    class func homeVC() -> HomeVC? {
        
        return mainStoryboard().instantiateViewController(withIdentifier: "HomeVC") as? HomeVC
    }
      
}
