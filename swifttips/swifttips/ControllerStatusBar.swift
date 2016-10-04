//
//  ControllerStatusBar.swift
//  swifttips
//
//  Created by Aaron on 5/8/2016.
//  Copyright © 2016 sightcorner. All rights reserved.
//

import Foundation
import UIKit

/**
 更改 status bar （运营商，时间，电池） 为白色
 需要先修改 info.plist 里的 View controller-based status bar appearance 为 NO
 */
public func changeStatusBarToLight() {
    UIApplication.shared.statusBarStyle = UIStatusBarStyle.lightContent
}
