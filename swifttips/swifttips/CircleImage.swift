//
//  CircleImage.swift
//  swifttips
//
//  Created by Aaron on 24/7/2016.
//  Copyright © 2016 sightcorner. All rights reserved.
//

import Foundation
import UIKit

/**
 把正方形或者长方形图片，转换为圆形图片
 
 - parameter image: 任意格式的图片，长方形和正方形皆可
 
 - returns: 圆形图片
 */
public func circleImage(image: UIImage) -> UIImage {
    let square = CGSize(width: min(image.size.width, image.size.height), height: min(image.size.width, image.size.height))
    let imageView = UIImageView(frame: CGRect(origin: CGPoint(x: 0, y: 0), size: square))
    imageView.contentMode = .ScaleAspectFill
    imageView.image = image
    imageView.layer.cornerRadius = square.width / 2
    imageView.layer.masksToBounds = true
    UIGraphicsBeginImageContextWithOptions(imageView.bounds.size, false, image.scale)
    let context = UIGraphicsGetCurrentContext()
    imageView.layer.renderInContext(context!)
    let result = UIGraphicsGetImageFromCurrentImageContext()
    UIGraphicsEndImageContext()
    return result
}

