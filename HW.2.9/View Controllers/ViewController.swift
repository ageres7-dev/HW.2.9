//
//  ViewController.swift
//  HW.2.9
//
//  Created by Сергей Долгих on 10.11.2020.
//

import UIKit
import Spring

class SpringViewController: UIViewController {
    
    @IBOutlet var imageSpring: SpringImageView!
    
 
    
    @IBOutlet var springView: SpringView!
    
//    @IBOutlet var infoText: SpringView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
//        infoSpringLabel.transform = CGAffineTransform(rotationAngle: 0.14)
    }

    
    
    
    @IBAction func buttonPressed() {
        
        
        springView.animation = "flipX"
    
        
        
//        inf÷oText.animate()
        
        
//        imageSpring.animation = "flipX"
        springView.curve = "easeIn"
//        imageSpring.duration = 1
        springView.animate()
    }
    
    
}

