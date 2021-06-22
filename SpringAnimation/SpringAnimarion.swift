//
//  SpringViewController.swift
//  SpringAnimation
//
//  Created by Татьяна Татьяна on 22.06.2021.
//

import UIKit
import Spring

class Animation {
    func shakeAnimation(animationView: SpringView, text: UITextView) {
        animationView.animation = "shake"
        animationView.curve = "easeIn"
        animationView.duration = 1.0
        animationView.animate()
        text.text =
            """
            layer.animation = "shake"
            layer.curve = "easeIn"
            layer.duration = 1.0
            layer.animate()
            """
    }
    func popAnimation(animationView: SpringView, text: UITextView) {
        animationView.animation = "pop"
        animationView.curve = "spring"
        animationView.duration = 1.0
        animationView.animate()
        text.text =
            """
            layer.animation = "pop"
            layer.curve = "spring"
            layer.duration = 1.0
            layer.animate()
            """
    }
    func morphAnimation(animationView: SpringView, text: UITextView) {
        animationView.animation = "morph"
        animationView.curve = "easeInOutExpo"
        animationView.duration = 1.4
        animationView.delay = 1.5
        animationView.animate()
        text.text =
            """
            layer.animation = "morph"
            layer.curve = "easeInOutExpo"
            layer.duration = 1.4
            layer.delay = 1.5
            layer.animate()
            """
    }
    func fadeInYAnimation(animationView: SpringView, text: UITextView) {
        animationView.animation = "fadeIn"
        animationView.curve = "easeInOutExpo"
        animationView.duration = 1.6
        animationView.delay = 0.6
        animationView.animate()
        text.text =
            """
            layer.animation = "fadeIn"
            layer.curve = "easeInOutExpo"
            layer.duration = 1.6
            layer.delay = 0.6
            layer.animate()
            """
    }
    func zoomInAnimation(animationView: SpringView, text: UITextView) {
        animationView.animation = "zoomIn"
        animationView.curve = "easeOutCirc"
        animationView.duration = 1.0
        animationView.animate()
        text.text =
            """
            layer.animation = "zoomIn"
            layer.curve = "easeOutCirc"
            layer.duration = 1.0
            layer.animate()
            """
    }
    func wobbleInAnimation(animationView: SpringView, text: UITextView) {
        animationView.animation = "wobble"
        animationView.curve = "easeIn"
        animationView.duration = 1.0
        animationView.animate()
        text.text =
            """
            layer.animation = "wobble"
            layer.curve = "easeIn"
            layer.duration = 1.0
            layer.animate()
            """
    }

}

