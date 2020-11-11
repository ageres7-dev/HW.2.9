//
//  ViewController.swift
//  HW.2.9
//
//  Created by Сергей Долгих on 10.11.2020.
//

//import UIKit
import Spring

class SpringViewController: UIViewController {
    
    @IBOutlet var currentSpring: SpringView!
    @IBOutlet var infoTextLabel: UILabel!
    @IBOutlet var nextAnimationButton: UIButton!


    let animationSettings = Animation.getAnimations()
    
    var animationSetting = Animation(preset: "", curve: "", force: 0, duratinon: 0, deley: 0)
    var nextName = ""


    override func viewDidLoad() {
        super.viewDidLoad()
        infoTextLabel.transform = CGAffineTransform(rotationAngle: 0.14)
        infoTextLabel.text = "Animation parameters"
        nextAnimationButton.layer.cornerRadius = 15
        animationSetting = animationSettings.first!
    }

    
    @IBAction func runButtonPressed(_ sender: UIButton) {
        setConfig(from: animationSetting, to: currentSpring)
        infoTextLabel.text = getInfoOf(currentSpring)
        currentSpring.animate()
        animationSetting = animationSettings.randomElement()!
//        nextName = animationSetting.preset
      
        sender.setTitle("Run " + animationSetting.preset, for: .normal)
       
    

//        print("current " + currentSpring.animation)
        
        
        
    }
    
    
    private func getInfoOf(_ springView: SpringView) -> String {
        return """
Animation: \(springView.animation)
Curve: \(springView.curve)
Duration: \(String(format: "%.2f", springView.duration))
Deley: \(String(format: "%.2f", springView.delay))
Force: \(String(format: "%.2f", springView.force))
"""
    }
    
    private func setConfig(from settings: Animation, to target: SpringView )  {
        target.animation = settings.preset
        target.curve = settings.curve
        target.delay = CGFloat(settings.deley)
        target.force = CGFloat(settings.force)
        target.duration = CGFloat(settings.duratinon)
    }
    
    
}

