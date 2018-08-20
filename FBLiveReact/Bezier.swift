//
//  Bezier.swift
//  FBLiveReact
//
//  Created by Snoopy on 20/08/2018.
//  Copyright © 2018 EMANET. All rights reserved.
//

import UIKit

class Bezier: UIView {
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        self.backgroundColor = .clear
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        self.backgroundColor = .clear
    }
    
    override func draw(_ rect: CGRect) {
        let milieu = frame.height / 2
        let tiers = frame.width / 3
        let depart = CGPoint(x: frame.width, y: milieu)
        let fin = CGPoint(x: 0, y: milieu)
        let cp1 = CGPoint(x: tiers * 2, y: milieu - 100)
        let cp2 = CGPoint(x: tiers, y: milieu + 100)
        
        
        let path = UIBezierPath()
        path.move(to: depart)
        path.addCurve(to: fin, controlPoint1: cp1, controlPoint2: cp2)
        
        
        UIColor.clear.setFill()
        path.fill()
        
        UIColor.red.setStroke()
        path.stroke()
    }
}
