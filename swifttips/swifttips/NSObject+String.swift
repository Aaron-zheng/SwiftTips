//
//  NSObject+String.swift
//  swifttips
//
//  Created by Aaron on 4/8/2016.
//  Copyright © 2016 sightcorner. All rights reserved.
//

import Foundation
import UIKit

extension NSObject {
    
    /// 获得当前类名
    class var nameOfClass: String {
        return NSStringFromClass(self).componentsSeparatedByString(".").last! as String
    }

}