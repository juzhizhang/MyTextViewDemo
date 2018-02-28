//
//  ViewController.swift
//  MyTextViewDemo
//
//  Created by admin on 2018/2/28.
//  Copyright © 2018年 tdin360. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        //测试
        let textview = MyTextView(frame:CGRect(x:20,y:100,width:200,height:30))
        self.view.addSubview(textview)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
      
    }


}

