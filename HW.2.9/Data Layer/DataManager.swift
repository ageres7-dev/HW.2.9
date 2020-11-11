//
//  DataManager.swift
//  HW.2.9
//
//  Created by Сергей on 11.11.2020.
//


class DataManager {
    static let shared = DataManager()
    
    let animationPresets = ["slideRight", "slideDown", "slideUp",
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
}
