//
//  ViewController.swift
//  HW.2.9
//
//  Created by Сергей Долгих on 10.11.2020.
//

import UIKit
import Spring

class SpringViewController: UIViewController {
    
    @IBOutlet var springView: SpringView!
    @IBOutlet var infoTextLabel: UILabel!
    @IBOutlet var nextAnimationButton: UIButton!
    
//    @IBOutlet var infoText: SpringView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        infoTextLabel.transform = CGAffineTransform(rotationAngle: 0.14)
        
        nextAnimationButton.layer.cornerRadius = 15
    }

    
    
    
    @IBAction func buttonPressed() {
        
        
        springView.animation = "flipX"
    
        
        
//        inf÷oText.animate()
        
        
//        imageSpring.animation = "flipX"
        springView.curve = "easeIn"
        springView.duration = 1
        springView.animate()
    }
    
    
}

