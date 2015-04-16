//
//  DrawView.swift
//  DemoForiOS8
//
//  Created by mm on 4/8/15.
//  Copyright (c) 2015 Pirate. All rights reserved.
//

import UIKit

class DrawView: UIView {

    override func drawLayer(layer: CALayer!, inContext ctx: CGContext!) {
        UIGraphicsPushContext(ctx)
        let p = UIBezierPath(ovalInRect: CGRectMake(0, 0, 100, 100))
        UIColor.blueColor().setFill()
        p.fill()
        UIGraphicsPopContext()
    }

}
