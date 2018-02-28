//
//  MyTextView.swift
//  UITextViewDemo
//  自定义自适应高度的uitextview
//  Created by admin on 2018/2/28.
//  Copyright © 2018年 tdin360. All rights reserved.
//

import UIKit

class MyTextView: UITextView,UITextViewDelegate {

    
    var maxHeight:CGFloat=60//定义最大高度
    override init(frame: CGRect, textContainer: NSTextContainer?) {
        
        super.init(frame: frame, textContainer: textContainer)
        
        self.delegate=self
        self.layer.borderColor = UIColor.lightGray.cgColor
        self.layer.borderWidth=0.5
        self.layer.cornerRadius=5
        self.layer.masksToBounds=true
        
        
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    
    func textViewDidChange(_ textView: UITextView) {
        
        
        //获取frame值
        let frame = textView.frame
        
        //定义一个constrainSize值用于计算textview的高度
        let constrainSize=CGSize(width:frame.size.width,height:CGFloat(MAXFLOAT))
        
        //获取textview的真实高度
        var size = textView.sizeThatFits(constrainSize)
        
        //如果textview的高度大于最大高度高度就为最大高度并可以滚动，否则不能滚动
        if size.height >= maxHeight{
            
        
            size.height = maxHeight
            textView.isScrollEnabled=true
            
        }else{
            
            textView.isScrollEnabled=false
        }
        

        //重新设置textview的高度
        
        textView.frame.size.height=size.height
        
    }
    
}
