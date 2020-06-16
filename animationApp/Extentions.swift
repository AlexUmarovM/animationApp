//
//  Extentions.swift
//  animationApp
//
//  Created by Александр Умаров on 16.06.2020.
//  Copyright © 2020 Александр Умаров. All rights reserved.
//

import UIKit

extension Animation {
    enum animationType: String, CaseIterable {
        case fall
        case shake
        case pop
        case flipX
        case flipY
        case morph
        case squeeze
        case flash
        case wobble
        case swing
    }
    static func getRandomAnimation() -> String? {
        let randomAnimation = animationType.allCases.shuffled().first?.rawValue
        return randomAnimation
    }
}

extension Animation {
    enum curveType: String, CaseIterable {
        case easeIn
        case easeOut
        case easeInOut
        case linear
        case spring
        case easeInSine
        case easeOutSine
        case easeInOutSine
        case easeInQuad
        case easeOutQuad
    }
    static func getRandomCurve() -> String? {
        let randomCurve = curveType.allCases.shuffled().first?.rawValue
        return randomCurve
    }
}

