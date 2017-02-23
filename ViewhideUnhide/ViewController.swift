//
//  ViewController.swift
//  ViewhideUnhide
//
//  Created by pradip gotamay on 2/23/17.
//  Copyright © 2017 Pradip Gotame. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    //both views height == 128 on storyboard
    
    @IBOutlet weak var constraint_view2_height: NSLayoutConstraint!
    @IBOutlet weak var constarint_view1_height: NSLayoutConstraint!
    
    //setting view hide status to false initially
    var flagForv1HideStatus : Bool = false
    var flagForv2HideStatus : Bool = false
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    
    
    @IBAction func btn_showAll(_ sender: UIButton) {
        /*if both views are hidden the show both of them*/
        
        if self.flagForv1HideStatus && self.flagForv2HideStatus {
            self.constarint_view1_height.constant = 128
            self.constraint_view2_height.constant = 128
            
            self.flagForv1HideStatus = false
            self.flagForv2HideStatus = false
        }
    }
    
    
    @IBAction func btn_hideV1(_ sender: UIButton) {
        
        /*checking whether view is hidden or not*/
        
        
        if self.flagForv1HideStatus {
            /*setting contant to 128 so that view is not hidden . 128 is the height constraint of view on storyboard*/
            self.constarint_view1_height.constant = 128
            self.flagForv1HideStatus = false
        }else{
            /*setting constant to 0 so that views appears hidden */
            self.constarint_view1_height.constant = 0
            self.flagForv1HideStatus = true
        }
    }
    

    @IBAction func btn_hideV2(_ sender: UIButton) {
        /*checking whether view is hidden or not*/
        
        
        if self.flagForv2HideStatus {
            self.constraint_view2_height.constant = 128
            self.flagForv2HideStatus = false
        }else{
            self.constraint_view2_height.constant = 0
            self.flagForv2HideStatus = true
        }
    }
}

