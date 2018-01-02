//
//  ViewController.swift
//  SlideView2
//
//  Created by SGI-Mac7 on 01/01/2018.
//  Copyright © 2018 Slash Global. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var leadingConstraints: NSLayoutConstraint!
    
    
    var menuShowing = false
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.leadingConstraints.constant -= 200
    }
    
    

    @IBAction func BtnOpen(_ sender: UIBarButtonItem) {
        
        
        if menuShowing == false {
            leadingConstraints.constant += 200
            UIView.animate(withDuration: 0.4, animations: {
                
                self.view.layoutIfNeeded()
            })
            menuShowing = true
        }
        else {
            leadingConstraints.constant -= 200
            menuShowing = false
            UIView.animate(withDuration: 0.4, animations: {
            
                self.view.layoutIfNeeded()
            })
        }
        
        //menuShowing = !menuShowing
    }
    
   }

