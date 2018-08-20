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
    var reacIV: ReactionIV?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        //vueBezier = Bezier(frame: CGRect(x: 0, y: 0, width: view.frame.width, height: view.frame.height))
        //view.addSubview(vueBezier)
        reacIV = ReactionIV(frame: CGRect(x: 0, y: 0, width: 30, height: 30))
        view.addSubview(reacIV!)
    }

    @IBAction func reactionDuBouton(_ sender: Any) {
        
        
        
    }
    
}

