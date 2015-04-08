//
//  DrawView.swift
//  DemoForiOS8
//
//  Created by mm on 4/8/15.
//  Copyright (c) 2015 Pirate. All rights reserved.
//

import UIKit

class DrawView: UIView {

    override func drawRect(rect: CGRect) {
        let context = UIGraphicsGetCurrentContext()
        CGContextAddEllipseInRect(context, CGRectMake(0, 0, 100, 100))
        CGContextSetFillColorWithColor(context, UIColor.blueColor().CGColor)
        CGContextFillPath(context)
    }

}
