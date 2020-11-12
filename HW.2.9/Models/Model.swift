//
//  Model.swift
//  HW.2.9
//
//  Created by Сергей on 11.11.2020.
//


struct Animation: Hashable {
    var preset = "wobble"
    var curve = "spring"
    var force = 1.0
    var duratinon = 1.0
    var deley = 0.0
}

extension Animation {
    static func getAnimations() -> [Animation] {

        let animations = [
            Animation(preset: "slideLeft",
                      curve: "easeOutExpo",
                      force: 1,
                      duratinon: 1,
                      deley: 0),
            Animation(preset: "fadeInLeft",
                      curve: "easeOutExpo",
                      force: 1,
                      duratinon: 1,
                      deley: 0),
            Animation(preset: "flipX",
                      curve: "easeOutExpo",
                      force: 1,
                      duratinon: 1,
                      deley: 1),
            Animation(preset: "squeeze",
                      curve: "easeOutExpo",
                      force: 0.5,
                      duratinon: 3,
                      deley: 0.2),
            Animation(preset: "swing",
                      curve: "easeOutExpo",
                      force: 1,
                      duratinon: 1,
                      deley: 0.4),
            Animation(preset: "flipY",
                      curve: "easeInQuint",
                      force: 1,
                      duratinon: 1,
                      deley: 0),
            Animation(preset: "fadeOutIn",
                      curve: "easeInQuad",
                      force: 1,
                      duratinon: 1,
                      deley: 0),
            Animation(preset: "swing",
                      curve: "easeInOutCirc",
                      force: 1,
                      duratinon: 1,
                      deley: 0),
        ]
        
        return animations
    }
}
