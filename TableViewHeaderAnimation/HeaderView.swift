//
//  HeaderView.swift
//  TableViewHeaderAnimation
//
//  Created by Carl.Yang on 7/28/15.
//  Copyright (c) 2015 Carl.Yang. All rights reserved.
//

import UIKit

class HeaderView: UIView {

    var contentView: UIView?
    
    required init(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        self.setupContentView()
        //self.moveOutContentView()
    }
    
    func setupContentView() {
//        contentView = UIView(frame: CGRectMake(0, 0, self.frame.width, 100))
        contentView = UIView(frame: self.frame)
        contentView?.backgroundColor = UIColor(red: 255/255, green: 0, blue: 0, alpha: 0.5)
        self.addSubview(contentView!)
    }
    
    func moveOutContentView() {
        var newFrame: CGRect! = self.contentView?.frame
        newFrame.origin.y -= newFrame.height
        self.contentView?.frame = newFrame
    }
    
    func moveCenterContentView() {
        self.contentView?.frame = self.frame
    }
    
}
