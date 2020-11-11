//
//  ViewController.swift
//  HW.2.9
//
//  Created by Сергей Долгих on 10.11.2020.
//

//import UIKit
import Spring

class SpringViewController: UIViewController {
    
    @IBOutlet var springView: SpringView!
    @IBOutlet var infoTextLabel: UILabel!
    @IBOutlet var nextAnimationButton: UIButton!

//    let animations = DataManager.shared.animationPresets.shuffled()
//    let curves = DataManager.shared.animationCurves.shuffled()
//    var currentIndices = 0

    var nextSpring = SpringView()
    var animationSettings = Animation.getRandomAnimation()

    
   
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        nextSpring = springView
        
        infoTextLabel.transform = CGAffineTransform(rotationAngle: 0.14)
        infoTextLabel.text = "Animation parameters"
        nextAnimationButton.layer.cornerRadius = 15
        
    }

    
    
//    @IBAction func runButtonPressed()
    
    @IBAction func runButtonPressed(_ sender: UIButton) {
        setConfNextSpring()
        
        sender.setTitle("Run \(nextSpring.animation)", for: .normal)
        
        infoTextLabel.text = getInfoOfSpring()
        
        springView = nextSpring
        springView.animate()
        animationSettings = Animation.getRandomAnimation()
        
//        nextSpring.animation = animations[currentIndices]
//        nextSpring.curve = curves[currentIndices]
        
//        springView.animation = animations[currentIndices]
//        springView.curve = curves[currentIndices]
//        springView = nextSpring
//        springView.animate()
        
        
//        infoTextLabel.text = getInfoOfSpring()
//        infoTextLabel.textAlignment = .right
//        currentIndices += 1
        
        
        
        
        
//        print(getInfoOfSpring())
        
        
//        nextAnimationButton.titleLabel?.text = getInfoOfSpring()
    }
    
    
    private func getInfoOfSpring() -> String {
        return """
Animation: \(springView.animation)
Curve: \(springView.curve)
Duration: \(String(format: "%.2f", springView.duration))
Deley: \(String(format: "%.2f", springView.delay))
Force: \(String(format: "%.2f", springView.force))
"""
    }
    
    private func setConfNextSpring()  {
        nextSpring.animation = animationSettings.preset
        nextSpring.curve = animationSettings.curve
        nextSpring.delay = CGFloat(animationSettings.deley)
        nextSpring.force = CGFloat(animationSettings.force)
        nextSpring.duration = CGFloat(animationSettings.duratinon)
    }

    
}

