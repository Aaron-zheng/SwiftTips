//
//  ViewShadowDepth.swift
//  swifttips
//
//  Created by Aaron on 4/9/2016.
//  Copyright © 2016 sightcorner. All rights reserved.
//

import Foundation
import UIKit

/**
 添加阴影
 
 - parameter view:  <#view description#>
 - parameter depth: <#depth description#>
 */
public func prepareDepth(view: UIView, depth: MaterialDepth) {
    view.layer.masksToBounds = false
    view.layer.shadowColor = UIColor.gray.cgColor
    view.layer.zPosition = 0
    let value = MaterialDepthToValue(depth: depth)
    view.layer.shadowOffset = value.offset
    view.layer.shadowOpacity = value.opacity
    view.layer.shadowRadius = value.radius
    
}


public typealias MaterialDepthType = (offset: CGSize, opacity: Float, radius: CGFloat)

public enum MaterialDepth {
    case None
    case Depth1
    case Depth2
    case Depth3
    case Depth4
    case Depth5
}

/// Converts the MaterialDepth enum to a MaterialDepthType value.
public func MaterialDepthToValue(depth: MaterialDepth) -> MaterialDepthType {
    switch depth {
    case .None:
        return (offset: CGSize.zero, opacity: 0, radius: 0)
    case .Depth1:
        return (offset: CGSize.init(width: 0, height: 1), opacity: 0.3, radius: 1)
    case .Depth2:
        return (offset: CGSize.init(width: 0, height: 2), opacity: 0.3, radius: 2)
    case .Depth3:
        return (offset: CGSize.init(width: 0, height: 3), opacity: 0.3, radius: 3)
    case .Depth4:
        return (offset: CGSize.init(width: 0, height: 4), opacity: 0.3, radius: 4)
    case .Depth5:
        return (offset: CGSize.init(width: 0, height: 5), opacity: 0.3, radius: 5)
    }
}
