//
//  UIVerticalAlignLabel.swift
//  swifttips
//
//  Created by Aaron on 25/7/2016.
//  Copyright © 2016 sightcorner. All rights reserved.
//

import Foundation
import UIKit


public class UIVerticalAlignLabel: UILabel {
    
    enum VerticalAligment: Int {
        case VerticalAligmentTop = 0
        case VerticalAligmentMiddle = 1
        case VerticalAligmentBottom = 2
    }
    
    
    var verticalAligment: VerticalAligment = .VerticalAligmentTop {
        didSet {
            setNeedsDisplay()
        }
    }
    
    /**
     顶部和左对齐的标签
     
     - parameter bounds:        <#bounds description#>
     - parameter numberOfLines: <#numberOfLines description#>
     
     - returns: <#return value description#>
     */
    public override func textRectForBounds(bounds: CGRect, limitedToNumberOfLines numberOfLines: Int) -> CGRect {
        let rect = super.textRectForBounds(bounds, limitedToNumberOfLines: numberOfLines)
        
        switch verticalAligment {
        case .VerticalAligmentTop:
            return CGRectMake(bounds.origin.x, bounds.origin.y, rect.size.width, rect.size.height)
        case .VerticalAligmentMiddle:
            return CGRectMake(bounds.origin.x, bounds.origin.y + (bounds.size.height - rect.size.height) / 2, rect.size.width, rect.size.height)
        case .VerticalAligmentBottom:
            return CGRectMake(bounds.origin.x, bounds.origin.y + (bounds.size.height - rect.size.height), rect.size.width, rect.size.height)
        }
    }
    
    public override func drawTextInRect(rect: CGRect) {
        let r = self.textRectForBounds(rect, limitedToNumberOfLines: self.numberOfLines)
        super.drawTextInRect(r)
    }
}