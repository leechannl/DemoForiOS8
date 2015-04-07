//
//  ViewController.swift
//  DemoForiOS8
//
//  Created by mm on 4/6/15.
//  Copyright (c) 2015 Pirate. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.

        let v1 = UIView(frame: CGRectMake(100.0, 111.0, 132.0, 194.0))
        v1.backgroundColor = UIColor(red: 1, green: 0.4, blue: 1, alpha: 1)
        let v2 = UIView()
        v2.backgroundColor = UIColor(red: 0.5, green: 1, blue: 0, alpha: 1)
        let v3 = UIView()
        v3.backgroundColor = UIColor(red: 1, green: 0, blue: 0, alpha: 1)

        self.view.addSubview(v1)
        v1.addSubview(v2)
        v1.addSubview(v3)
        v2.setTranslatesAutoresizingMaskIntoConstraints(false)
        v3.setTranslatesAutoresizingMaskIntoConstraints(false)

        v1.addConstraint(
            NSLayoutConstraint(item: v2,
                attribute: .Left,
                relatedBy: .Equal,
                toItem: v1,
                attribute: .Left,
                multiplier: 1,
                constant: 0))
        v1.addConstraint(
            NSLayoutConstraint(item: v2,
                attribute: .Right,
                relatedBy: .Equal,
                toItem: v1,
                attribute: .Right,
                multiplier: 1,
                constant: 0))
        v1.addConstraint(
            NSLayoutConstraint(item: v2,
                attribute: .Top,
                relatedBy: .Equal,
                toItem: v1,
                attribute: .Top,
                multiplier: 1,
                constant: 0)
        )
        v2.addConstraint(
            NSLayoutConstraint(item: v2,
                attribute: .Height,
                relatedBy: .Equal,
                toItem: nil,
                attribute: .NotAnAttribute,
                multiplier: 1,
                constant: 10)
        )
        v3.addConstraint(
            NSLayoutConstraint(item: v3,
                attribute: .Width,
                relatedBy: .Equal,
                toItem: nil,
                attribute: .NotAnAttribute,
                multiplier: 1,
                constant: 20)
        )
        v3.addConstraint(
            NSLayoutConstraint(item: v3,
                attribute: .Height,
                relatedBy: .Equal,
                toItem: nil,
                attribute: .NotAnAttribute,
                multiplier: 1,
                constant: 20)
        )
        v1.addConstraint(
            NSLayoutConstraint(item: v3,
                attribute: .Right,
                relatedBy: .Equal,
                toItem: v1,
                attribute: .Right,
                multiplier: 1,
                constant: 0)
        )
        v1.addConstraint(
            NSLayoutConstraint(item: v3,
                attribute: .Bottom,
                relatedBy: .Equal,
                toItem: v1,
                attribute: .Bottom,
                multiplier: 1,
                constant: 0)
        )
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

