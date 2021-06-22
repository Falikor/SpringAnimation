//
//  ViewController.swift
//  SpringAnimation
//
//  Created by Татьяна Татьяна on 22.06.2021.
//

import UIKit
import Spring
import SpriteKit

class ViewController: UIViewController {
    
    @IBOutlet weak var animationView: SpringView!
    @IBOutlet weak var animationTextCode: UITextView!
    @IBOutlet weak var animationButton: UIButton!
    @IBOutlet weak var sceenView: SKView!
    
    let animations = Animation()
    var scene:BeeScene?
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        self.scene = BeeScene(size: CGSize(width: self.sceenView.frame.size.width, height: self.sceenView.frame.size.height))
        self.sceenView.presentScene(scene)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
    }

    @IBAction func buttonTouchAnimation(_ sender: UIButton) {
        randomAnimation()
        
        if let scene = self.scene {
            scene.flyBee()
        }
    }
    
}


extension ViewController {
    private func randomAnimation() {
        let tapCounter = Int.random(in: 0...6) // специально чтобы выпадал default

        switch tapCounter {
        case 0:
            animations.shakeAnimation(animationView: animationView, text: animationTextCode)
        case 1:
            animations.morphAnimation(animationView: animationView, text: animationTextCode)
        case 2:
            animations.popAnimation(animationView: animationView, text: animationTextCode)
        case 3:
            animations.fadeInYAnimation(animationView: animationView, text: animationTextCode)
        case 4:
            animations.zoomInAnimation(animationView: animationView, text: animationTextCode)
        case 5:
            animations.wobbleInAnimation(animationView: animationView, text: animationTextCode)

        default:
            animationTextCode.text = "Пчелы! Кругом пчелы! Хватит жать на кнопку беги!"
        }
    }
}

