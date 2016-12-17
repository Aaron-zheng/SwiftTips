//
//  Blur.swift
//  swifttips
//
//  Created by Aaron on 18/12/2016.
//  Copyright © 2016 sightcorner. All rights reserved.
//

import Foundation
import UIKit

/**
 添加一层遮罩
 
 */
private func blur(background: UIView) {
    let blurEffect = UIBlurEffect(style: UIBlurEffectStyle.light)
    let blurEffectView = UIVisualEffectView(effect: blurEffect)
    blurEffectView.frame = background.bounds
    blurEffectView.autoresizingMask = [.flexibleWidth, .flexibleHeight] // for supporting device rotation
    background.addSubview(blurEffectView)
}
