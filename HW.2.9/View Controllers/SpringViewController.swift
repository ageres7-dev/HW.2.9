//
//  ViewController.swift
//  HW.2.9
//
//  Created by Сергей Долгих on 10.11.2020.
//

import Spring

class SpringViewController: UIViewController {
    
    @IBOutlet var currentSpring: SpringView!
    @IBOutlet var infoTextLabel: UILabel!
    @IBOutlet var runButton: UIButton!
    
    let allAnimationSettings = Animation.getAnimations()
    var currentAnimationSetting = Animation()

    override func viewDidLoad() {
        super.viewDidLoad()
        infoTextLabel.transform = CGAffineTransform(rotationAngle: 0.14)
        runButton.layer.cornerRadius = 15
        currentAnimationSetting = allAnimationSettings.first!
    }
    
    @IBAction func runButtonPressed() {
        setConfig(from: currentAnimationSetting, to: currentSpring)
        currentSpring.animate()
        infoTextLabel.text = getInfoOf(currentSpring)
        currentAnimationSetting = allAnimationSettings.randomElement()!
        runButton.setTitle("Run " + currentAnimationSetting.preset, for: .normal)
    }
    
    private func getInfoOf(_ springView: SpringView) -> String {
        return """
Animation: \(springView.animation)
Curve: \(springView.curve)
Duration: \(springView.duration)
Deley: \(springView.delay)
Force: \(springView.force)
"""
    }
    
    private func setConfig(from settings: Animation, to target: SpringView ) {
        target.animation = settings.preset
        target.curve = settings.curve
        target.delay = CGFloat(settings.deley)
        target.force = CGFloat(settings.force)
        target.duration = CGFloat(settings.duratinon)
    }
    
}

