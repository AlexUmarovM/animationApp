//
//  ViewController.swift
//  animationApp
//
//  Created by Александр Умаров on 15.06.2020.
//  Copyright © 2020 Александр Умаров. All rights reserved.
//

import Spring

class AnimationViewController: UIViewController {
    
    @IBOutlet var animationButton: UIButton!
    @IBOutlet var springAnimationView: SpringView!
    @IBOutlet var animationParameterLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        animationButton.setTitle("\(Animation.getRandomAnimation()!)", for: .normal)
        animationParameterLabel.text = "Animation Parameters"
        animationButton.layer.cornerRadius = 10
        springAnimationView.layer.cornerRadius = 10
    }
    
    func getParameters(animation: Animation) {
        animationParameterLabel.text = """
        Animation Type: \(animation.animation)
        Curve: \(animation.curve)
        Force: \(String(format: "%.2f",animation.force))
        Duration: \(String(format: "%.2f",animation.duration))
        """
    }
    
    func startAnimation(animation: Animation) {
        springAnimationView.animation = animation.animation
        springAnimationView.curve = animation.curve
        springAnimationView.force = animation.force
        springAnimationView.duration = animation.duration
        springAnimationView.animate()
    }
    
    @IBAction func startAnimationButton(_ sender: UIButton) {
        animationButton.setTitle("\(Animation.getRandomAnimation()!)", for: .normal)
        
        switch animationButton.titleLabel?.text {
        case Animation.animationType.pop.rawValue:
            let pop = Animation(animation: "pop")
            
            getParameters(animation: pop)
            startAnimation(animation: pop)
            
        case Animation.animationType.shake.rawValue:
            let shake = Animation(animation: "shake")
            
            getParameters(animation: shake)
            startAnimation(animation: shake)
            
        case Animation.animationType.fall.rawValue:
            let fall = Animation(animation: "fall")
            
            getParameters(animation: fall)
            startAnimation(animation: fall)
            
        case Animation.animationType.flash.rawValue:
            let flash = Animation(animation: "flash")
            
            getParameters(animation: flash)
            startAnimation(animation: flash)
            
        case Animation.animationType.wobble.rawValue:
            let wobble = Animation(animation: "wobble")
            
            getParameters(animation: wobble)
            startAnimation(animation: wobble)
            
        case Animation.animationType.swing.rawValue:
            let swing = Animation(animation: "swing")
            
            getParameters(animation: swing)
            startAnimation(animation: swing)
            
        case Animation.animationType.squeeze.rawValue:
            let squeeze = Animation(animation: "squeeze")
            
            getParameters(animation: squeeze)
            startAnimation(animation: squeeze)
            
        case Animation.animationType.flipX.rawValue:
            let flipX = Animation(animation: "flipX")
            
            getParameters(animation: flipX)
            startAnimation(animation: flipX)
            
        case Animation.animationType.flipY.rawValue:
            let flipY = Animation(animation: "flipY")
            
            getParameters(animation: flipY)
            startAnimation(animation: flipY)
            
        default:
            let morph = Animation(animation: "morph")
            
            getParameters(animation: morph)
            startAnimation(animation: morph)
        }
    }
    
}


