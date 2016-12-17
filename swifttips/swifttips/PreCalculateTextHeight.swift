//
//  PreCalculateTextHeight.swift
//  swifttips
//
//  Created by Aaron on 26/7/2016.
//  Copyright © 2016 sightcorner. All rights reserved.
//

import Foundation
import UIKit

/**
 计算在给定的文字类型和宽度限制下，文本将会占到的高度
 
 - parameter text:  文本文字
 - parameter font:  字体类型
 - parameter width: 宽度
 
 - returns: 文本的高度
 */
func preCalculateTextHeight(text: String, font: UIFont, width: CGFloat) -> CGFloat {
    let label:UILabel = UILabel(frame: CGRect.init(x: 0, y: 0, width: width, height: CGFloat.greatestFiniteMagnitude))
    label.numberOfLines = 0
    label.lineBreakMode = .byWordWrapping
    label.font = font
    label.text = text
    label.sizeToFit()
    return label.frame.height
}
