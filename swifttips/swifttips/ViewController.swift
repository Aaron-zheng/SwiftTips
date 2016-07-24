//
//  ViewController.swift
//  swifttips
//
//  Created by Aaron on 24/7/2016.
//  Copyright © 2016 sightcorner. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    /**
     展示所有 Swift Tips。一般默认是全部都注释，想查看哪种，就把对应的注释去掉就可以了。
     */
    override func viewDidLoad() {
        super.viewDidLoad()
        
        presentUtility()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    /**
     展示 utility
     */
    private func presentUtility() {
       
        presentImage()
    }

    /**
     展示 image
     */
    private func presentImage() {
        presentCircleImage()
    }
    
    /**
     展示剪切圆形图片
     */
    private func presentCircleImage() {
        let imgView = UIImageView(frame: CGRectMake(view.frame.width / 2 - 50, view.frame.height / 2 - 50, 100, 100))
        imgView.image = circleImage(UIImage(named: "profile")!)
        view.addSubview(imgView)
    }

}

