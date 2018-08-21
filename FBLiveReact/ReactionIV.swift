//
//  ReactionIV.swift
//  FBLiveReact
//
//  Created by Snoopy on 20/08/2018.
//  Copyright © 2018 EMANET. All rights reserved.
//

import UIKit

class ReactionIV: UIImageView, CAAnimationDelegate {
    
    var images = [#imageLiteral(resourceName: "thumb"), #imageLiteral(resourceName: "heart"), #imageLiteral(resourceName: "sad")]
    
    var imageTag: Int? {
        didSet {
            guard let img = imageTag else { return }
            image = images[img]
            layer.add(animation(), forKey: nil)
        }
    }
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        //setup()
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        //setup()
    }
    
    func setup() {
        image = #imageLiteral(resourceName: "thumb")
        layer.add(animation(), forKey: nil)
    }
    
    func animation() -> CAKeyframeAnimation {
        let anim = CAKeyframeAnimation(keyPath: "position")
        anim.path = ligneCourbe().cgPath
        
        let centiemes = Double(aleatoire(max: 100)) / 100
        anim.duration = 1 + centiemes
        anim.fillMode = kCAFillModeForwards
        anim.isRemovedOnCompletion = false
        anim.delegate = self
        return anim
    }
    
    func ligneCourbe() -> UIBezierPath {
        let vue = UIScreen.main.bounds
        
        let milieu = vue.height / 2
        let tiers = vue.width / 3
        let depart = CGPoint(x: vue.width, y: milieu)
        let fin = CGPoint(x: 0, y: milieu)
        let cp1 = CGPoint(x: tiers * 2, y: milieu - 100 + aleatoire(max: 100))
        let cp2 = CGPoint(x: tiers, y: milieu + 100 + aleatoire(max: 100))
        
        
        let path = UIBezierPath()
        path.move(to: depart)
        path.addCurve(to: fin, controlPoint1: cp1, controlPoint2: cp2)
        
        return path
    }
    
    func animationDidStop(_ anim: CAAnimation, finished flag: Bool) {
        self.removeFromSuperview()
    }
    
    

}
