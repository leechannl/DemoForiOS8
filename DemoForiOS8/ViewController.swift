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

        let d = ["v2": v2, "v3": v3];
        v1.addConstraints(
            NSLayoutConstraint.constraintsWithVisualFormat("H:|[v2]|", options: nil, metrics: nil, views: d)
        )
        v1.addConstraints(
            NSLayoutConstraint.constraintsWithVisualFormat("V:|[v2(10)]", options: nil, metrics: nil, views: d)
        )
        v1.addConstraints(
            NSLayoutConstraint.constraintsWithVisualFormat("H:[v3(20)]|", options: nil, metrics: nil, views: d)
        )
        v1.addConstraints(
            NSLayoutConstraint.constraintsWithVisualFormat("V:[v3(20)]|", options: nil, metrics: nil, views: d)
        )
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

