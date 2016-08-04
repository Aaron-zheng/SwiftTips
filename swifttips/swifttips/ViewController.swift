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
        presentExtension()
    }

    /**
     展示 image
     */
    private func presentImage() {
        /**
         把正方形或者长方形图片，转换为圆形图片
         */
        //presentCircleImage()
        
    }
    
    /**
     展示 label
     */
    private func presentLabel() {
        /**
         顶部和左对齐的标签
         */
        //presentUIVerticalAligmentLabel()
        
        /**
         计算在给定的文字类型和宽度限制下，文本将会占到的高度
         */
        //presentPreCalculateTextHeight()
    
    }
    
    private func presentExtension() {
        /**
         获得当前类名
         */
        //ViewController.presentClassName()
    }
    
    
    
    //下面为例子说明
    
    
    
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
    
    private func presentPreCalculateTextHeight() {
        let text = "在新西兰，呆了半年，可以写一点这里的感受。在这里，你会，住很多地方，遇到很多人，碰过很多事。对于住，来新西兰住过酒店 (Hotel)，公园 (Holiday Park)，寄宿家庭 (Home Stay)，同住屋 (Shared House)，还有最没想到的帐篷 (Tent)。对于自己，印象最深的就是住山上的帐篷，住起来，没有想象中的差，但也没有想象中的那么酷和自在。对于人，有些人是工作遇到的，碰面多了，就会加深交流，然而总有一天，会因种种原因而分道扬镳了，我们扬言着以后再见，却又不知道那天是否真的来临，不过心里还是会有点小期待。有些人则是超市、路过、玩耍中认识，可能说过一次话见过一次面后，就再也不会记起对方，这样的遇见次数多了，就开始对陌生人脸盲了。而有些人则是你不喜欢的，但是利益冲突在新西兰是比较少的，所以哪怕遇到你不喜欢的人也不会讨厌。对于事，有些是开心的，有些是不开心的。这些记忆对于我来说，可能都带不走了，最后留下的可能都是手机的相片和这些文字了。打工假期的这个签证本身，就意味着你可以选择多种季节工，接触不同国家不同地方的人，然后发生不一样的事情。在新西兰3个月碰上的事可能远超我呆广州1年所发生的。"
        let height = preCalculateTextHeight(text, font: UIFont(name: "Helvetica", size: 12)!, width: view.frame.width)
        let label = UILabel(frame: CGRectMake(0, 0, view.frame.width, height))
        label.text = text
        label.numberOfLines = 0
        label.font = UIFont(name: "Helvetica", size: 12)!
        label.textColor = UIColor.whiteColor()
        label.backgroundColor = UIColor.blackColor()
        view.addSubview(label)
    }
    
    static func presentClassName() {
        print(self.nameOfClass)
    }
}

