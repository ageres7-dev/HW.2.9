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
    
    @IBOutlet var infoSpringLabel: SpringLabel!
    
    
    @IBOutlet var infoText: SpringView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        infoSpringLabel.transform = CGAffineTransform(rotationAngle: 0.14)
    }

    
    
    
    @IBAction func buttonPressed() {
        
        
        infoText.animation = "flipX"
    
        
        
        infoText.animate()
        
        
        imageSpring.animation = "flipX"
        imageSpring.curve = "easeIn"
        imageSpring.duration = 1
        imageSpring.animate()
    }
    
    
}

