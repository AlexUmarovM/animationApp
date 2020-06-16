//
//  AnimationModel.swift
//  animationApp
//
//  Created by Александр Умаров on 16.06.2020.
//  Copyright © 2020 Александр Умаров. All rights reserved.
//

import UIKit

struct Animation {
    var animation: String
    var curve: String = getRandomCurve() ?? ""
    var force: CGFloat = CGFloat.random(in: 0.1...1)
    var duration: CGFloat = CGFloat.random(in: 0.5...2)
}


