//
//  ViewController.swift
//  FBLiveReact
//
//  Created by Snoopy on 20/08/2018.
//  Copyright © 2018 EMANET. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var vueBezier: Bezier!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        vueBezier = Bezier(frame: CGRect(x: 0, y: 0, width: view.frame.width, height: view.frame.height))
        view.addSubview(vueBezier)
    }

    @IBAction func reactionDuBouton(_ sender: Any) {
        
        
        
    }
    
}

