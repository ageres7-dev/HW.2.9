//
//  Model.swift
//  HW.2.9
//
//  Created by Сергей on 11.11.2020.
//

 
import Spring

struct Animation{
    var preset: String
    var curve: String
    var force: CGFloat
    var duratinon: CGFloat
    var deley: CGFloat
}
 
extension Animation {
    static func getRandomAnimation() -> Animation {
        
        Animation(
            preset: DataManager.shared.animationPresets.randomElement() ?? "",
            curve: DataManager.shared.animationCurves.randomElement() ?? "",
            force: CGFloat.random(in: 1...5),
            duratinon: CGFloat.random(in: 0.5...5),
            deley: CGFloat.random(in: 0...5)
        )
    }
}
 
 
 



//extension SpringView {
//    static func getRandomAnimation() {
//
//
        
        
        /*
        private let animationPresets = ["slideRight", "slideDown", "slideUp",
                                "squeezeLeft", "squeezeRight", "squeezeDown",
                                "squeezeUp", "fadeIn", "fadeOut",
                                "fadeOutIn", "fadeInLeft", "fadeInRight",
                                "fadeInDown", "fadeInUp", "zoomIn",
                                "zoomOut", "fall", "shake",
                                "pop", "flipX", "flipY",
                                "morph", "squeeze", "flash",
                                "wobble", "swing"]
        
        let animationCurves = ["easeIn", "easeOut", "easeInOut",
                               "linear", "spring", "easeInSine",
                               "easeOutSine", "easeInOutSine", "easeInQuad",
                               "easeOutQuad", "easeInOutQuad", "easeInCubic",
                               "easeOutCubic", "easeInOutCubic", "easeInQuart",
                               "easeOutQuart", "easeInOutQuart", "easeInQuint",
                               "easeOutQuint", "easeInOutQuint", "easeInExpo",
                               "easeOutExpo", "easeInOutExpo", "easeInCirc",
                               "easeOutCirc", "easeInOutCirc", "easeInBack",
                               "easeOutBack", "easeInOutBack"]
        */
//    }
//
//}

 







/*
import Spring


func getSprings() {
    let spring = SpringView()
    
    spring.animation = AnimationPreset.slideDown.rawValue
    spring.curve = AnimationCurve.easeInOutExpo.rawValue
//    AnimationPreset.RawValue
    
}



public enum AnimationPreset: String {
    case slideLeft
    case slideRight
    case slideDown
    case slideUp
    case squeezeLeft
    case squeezeRight
    case squeezeDown
    case squeezeUp
    case fadeIn
    case fadeOut
    case fadeOutIn
    case fadeInLeft
    case fadeInRight
    case fadeInDown
    case fadeInUp
    case zoomIn
    case zoomOut
    case fall
    case shake
    case pop
    case flipX
    case flipY
    case morph
    case squeeze
    case flash
    case wobble
    case swing
}

public enum AnimationCurve: String {
    case easeIn
    case easeOut
    case easeInOut
    case linear
    case spring
    case easeInSine
    case easeOutSine
    case easeInOutSine
    case easeInQuad
    case easeOutQuad
    case easeInOutQuad
    case easeInCubic
    case easeOutCubic
    case easeInOutCubic
    case easeInQuart
    case easeOutQuart
    case easeInOutQuart
    case easeInQuint
    case easeOutQuint
    case easeInOutQuint
    case easeInExpo
    case easeOutExpo
    case easeInOutExpo
    case easeInCirc
    case easeOutCirc
    case easeInOutCirc
    case easeInBack
    case easeOutBack
    case easeInOutBack
}



*/
