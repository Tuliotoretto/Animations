//
//  LoaderView.swift
//  Animations
//
//  Created by Julian Garcia  on 13/11/22.
//

import UIKit
import Lottie

public class LoaderView: UIView {
    
    let animations = ["drinks", "running", "cat", "fish"]
    var currentAnimation: LottieAnimationView?
    
    public override init(frame: CGRect) {
        super.init(frame: frame)
    }
    
    required public init?(coder: NSCoder) {
        super.init(coder: coder)
    }
    
    func setAnimation(index: Int) {
        guard index <= animations.count - 1 else {return}
        if currentAnimation != nil {
            currentAnimation!.removeFromSuperview()
        }
        
        currentAnimation = LottieAnimationView(name: animations[index])
        
        if let ca = currentAnimation {
            ca.frame = CGRect(x: 0, y: 0, width: 600, height: 600)
            ca.center = self.center
            ca.animationSpeed = 1
            ca.contentMode = .scaleAspectFill
            ca.loopMode = .autoReverse
            self.addSubview(ca)
            ca.translatesAutoresizingMaskIntoConstraints = false
            ca.centerXAnchor.constraint(equalTo: centerXAnchor).isActive = true
            ca.centerYAnchor.constraint(equalTo: centerYAnchor).isActive = true
            ca.widthAnchor.constraint(equalToConstant: 300).isActive = true
            ca.heightAnchor.constraint(equalToConstant: 300).isActive = true
            
            ca.play()
        }
    }
}

