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

    let animations = DataManager.shared.animationPresets.shuffled()
    let curves = DataManager.shared.animationCurves.shuffled()
    var nextSpring = SpringView()
    
    var currentIndices = 0 //: (animation: Int, curve: Int) = (1, 4)
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        nextSpring = springView
        
        infoTextLabel.transform = CGAffineTransform(rotationAngle: 0.14)
        infoTextLabel.text = ""
        nextAnimationButton.layer.cornerRadius = 15
        
//        nextAnimationButton.setTitle("432", for: .normal)
        
    }

    
    
//    @IBAction func buttonPressed()
    
    @IBAction func buttonPressed(_ sender: UIButton) {
    
        //TODO
        
        sender.setTitle("Run \(animations[currentIndices + 1 ])", for: .normal)
        
        nextSpring.animation = animations[currentIndices]
        nextSpring.curve = curves[currentIndices]
        
//        springView.animation = animations[currentIndices]
//        springView.curve = curves[currentIndices]
        springView = nextSpring
        springView.animate()
        
        
        infoTextLabel.text = getInfoOfSpring()
        infoTextLabel.textAlignment = .right
        currentIndices += 1
        
        
        
        
        
//        print(getInfoOfSpring())
        
        
//        nextAnimationButton.titleLabel?.text = getInfoOfSpring()
    }
    
    
    private func getInfoOfSpring() -> String {
        //        springView.animation
        return """
 Animation: \(springView.animation)
 Curve: \(springView.curve)
 Duration: \(springView.duration)
 """
//        "1234567890-\n12345678901234567890"
    }
    
//    private func setInfoTextLabel(from: String ) {
//
//    }
    
}

