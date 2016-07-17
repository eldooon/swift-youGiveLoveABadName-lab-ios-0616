//
//  ViewController.swift
//  YouGiveLoveABadName
//
//  Created by Flatiron School on 6/30/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var bonJoviImage: UIImageView!
    @IBOutlet weak var expandButton: UIButton!
    var topAnchor = NSLayoutConstraint()
    var bottomAnchor = NSLayoutConstraint()
    var height = NSLayoutConstraint()
    var width = NSLayoutConstraint()
    var expandButtonToggle = true

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        //remove constraints
        self.view.translatesAutoresizingMaskIntoConstraints = false
        self.view.removeConstraints(self.view.constraints)
        
        self.bonJoviImage.translatesAutoresizingMaskIntoConstraints = false
        self.bonJoviImage.removeConstraints(self.view.constraints)
        
        self.expandButton.translatesAutoresizingMaskIntoConstraints = false
        self.expandButton.removeConstraints(self.view.constraints)
        
        //set contraints for bonjovi
//        self.topAnchor = self.bonJoviImage.topAnchor.constraintEqualToAnchor(self.view.topAnchor, constant: 200)
//        self.topAnchor.active = true
//        
//        self.bottomAnchor = self.bonJoviImage.bottomAnchor.constraintEqualToAnchor(self.view.bottomAnchor, constant: -200)
//        self.bottomAnchor.active = true
        
        self.bonJoviImage.centerXAnchor.constraintEqualToAnchor(self.view.centerXAnchor, constant: 0).active = true
        self.bonJoviImage.centerYAnchor.constraintEqualToAnchor(self.view.centerYAnchor, constant: 0).active = true
//        
        self.width = self.bonJoviImage.widthAnchor.constraintEqualToAnchor(self.view.widthAnchor, constant: 0)
        self.width.active = true
        
        self.height = self.bonJoviImage.heightAnchor.constraintEqualToConstant(200)
        self.height.active = true
        
        //set contraints for expand button
        self.expandButton.centerXAnchor.constraintEqualToAnchor(self.view.centerXAnchor, constant: 0).active = true
        self.expandButton.centerYAnchor.constraintEqualToAnchor(self.view.centerYAnchor, constant: 300).active = true
        
        self.view.bringSubviewToFront(self.expandButton)
//        self.expandButton.bottomAnchor.constraintEqualToAnchor(self.view.bottomAnchor, constant: 20)
    }
    
    @IBAction func expandButtonTapped(sender: AnyObject) {
        
        if self.expandButtonToggle == true {
            
            self.expandButtonToggle = false
            
            UIView.animateWithDuration(0.5, animations: {
                self.width.constant = 5
                self.height.constant = 800
                self.view.layoutIfNeeded()
                }, completion: { (completed) in
                    
                    UIView.animateWithDuration(0.2, animations: {
                        self.width.constant = 0
                        self.height.constant = 780
                        self.view.layoutIfNeeded()
                    })
            })
            
        }
        
        else {
            
            self.expandButtonToggle = true
            UIView.animateWithDuration(0.5, animations: {
                self.width.constant = -5
                self.height.constant = 190
                self.view.layoutIfNeeded()
                }, completion: { (completed) in
                    
                    UIView.animateWithDuration(0.2, animations: {
                        self.width.constant = 0
                        self.height.constant = 200
                        self.view.layoutIfNeeded()
                    })
            })
        }
    }

}

