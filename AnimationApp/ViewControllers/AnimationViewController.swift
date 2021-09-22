//
//  ViewController.swift
//  AnimationApp
//
//  Created by Илья Нечаев on 22.09.2021.
//

import Spring

class AnimationViewController: UIViewController {


    @IBOutlet weak var runAnimationButton: UIButton!
    
    @IBOutlet weak var presetLabel: UILabel!
    @IBOutlet weak var curveLabel: UILabel!
    @IBOutlet weak var forceLabel: UILabel!
    @IBOutlet weak var durationLabel: UILabel!
    @IBOutlet weak var delayLabel: UILabel!
    
    @IBOutlet weak var animationView: SpringView!

    @IBAction func runAnimationButtonPressed() {
        
        if let randomAnimation = DataManager.shared.animations.randomElement() {
            animationView.animation = randomAnimation.preset
            animationView.curve = randomAnimation.curve
            animationView.force = randomAnimation.force
            animationView.duration = randomAnimation.duration
            animationView.delay = randomAnimation.delay
            presetLabel.text = "preset: \(randomAnimation.preset)"
            curveLabel.text = "curve: \(randomAnimation.curve)"
            forceLabel.text = "force: \(randomAnimation.force.description)"
            durationLabel.text = "duration: \(randomAnimation.duration.description)"
            delayLabel.text = "delay: \(randomAnimation.delay.description)"
        }
        animationView.animate()
        
    }
    
}

extension AnimationViewController {
    
}
