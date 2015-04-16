//
//  BlurViewController.swift
//  DemoForiOS8
//
//  Created by mm on 4/16/15.
//  Copyright (c) 2015 Pirate. All rights reserved.
//

import UIKit

class BlurViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        let blur = UIVisualEffectView(effect: UIBlurEffect(style: .Light))
        blur.frame = self.view.bounds
        blur.autoresizingMask = .FlexibleWidth | .FlexibleHeight
        let vib = UIVisualEffectView(effect: UIVibrancyEffect(forBlurEffect: blur.effect as! UIBlurEffect))
        let label = UILabel()
        label.text = "Hello, world"
        label.sizeToFit()
        vib.frame = label.frame
        vib.contentView.addSubview(label)
        vib.center = CGPointMake(blur.bounds.midX, blur.bounds.midY)
        vib.autoresizingMask = .FlexibleTopMargin | .FlexibleBottomMargin | .FlexibleLeftMargin | .FlexibleRightMargin
        blur.contentView.addSubview(vib)
        self.view.addSubview(blur)
    }
}
