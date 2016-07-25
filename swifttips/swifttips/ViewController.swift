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
        presentLabel()
    }

    /**
     展示 image
     */
    private func presentImage() {
//        presentCircleImage()
    }
    
    /**
     展示 label
     */
    private func presentLabel() {
//        presentUIVerticalAligmentLabel()
    }
    
    
    
    //下面为例子说明
    
    
    /**
     展示剪切圆形图片
     */
    private func presentCircleImage() {
        let imgView = UIImageView(frame: CGRectMake(view.frame.width / 2 - 50, view.frame.height / 2 - 50, 100, 100))
        imgView.image = circleImage(UIImage(named: "profile")!)
        view.addSubview(imgView)
    }
    
    
    private func presentUIVerticalAligmentLabel() {
        let width = view.frame.width / 2
        let height = view.frame.height
        
        let labelContent = "我与树莓在纽村打工旅行周记"
        let label1 = UILabel(frame: CGRectMake(0, 0, width, height))
        label1.text = labelContent
        label1.numberOfLines = 0
        label1.backgroundColor = UIColor.blueColor()
        view.addSubview(label1)
        let label2 = UIVerticalAlignLabel(frame: CGRectMake(width, 0, width, height))
        label2.text = labelContent
        label2.numberOfLines = 0
        label2.backgroundColor = UIColor.greenColor()
        view.addSubview(label2)
    }
}

