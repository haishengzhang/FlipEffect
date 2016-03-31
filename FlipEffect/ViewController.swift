//
//  ViewController.swift
//  FlipEffect
//
//  Created by xin on 16/3/31.
//  Copyright © 2016年 litre. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var scrollView: UIScrollView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        
        let numCards = 6
        let scroll_width = UIScreen.mainScreen().bounds.width/2
        let scroll_height = scrollView.frame.size.height
        let colorArray = [UIColor.redColor(),UIColor.cyanColor(),UIColor.magentaColor(),UIColor.yellowColor(),UIColor.orangeColor()];
        for iIndex in 0..<numCards{
            
            let listImage = UIImageView()
            listImage.frame = CGRectMake(scroll_width * CGFloat(iIndex), 0, scroll_width-10, scroll_height)
            let random =  arc4random() % 5
            listImage.backgroundColor = colorArray[Int(random)]
            scrollView.addSubview(listImage)
            
        }
        scrollView.contentSize =  CGSizeMake(scroll_width * CGFloat(numCards), 0)
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

