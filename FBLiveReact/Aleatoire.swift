//
//  Aleatoire.swift
//  FBLiveReact
//
//  Created by Snoopy on 21/08/2018.
//  Copyright © 2018 EMANET. All rights reserved.
//

import UIKit

func aleatoire(max: UInt32) -> CGFloat {
    return CGFloat(arc4random_uniform(max))
}
