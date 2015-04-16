//
//  ViewController.swift
//  DemoForiOS8
//
//  Created by mm on 4/6/15.
//  Copyright (c) 2015 Pirate. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var v1 = UIView()
    var v2 = UIView()
    var v3 = UIView()
    var constraintsWith = [NSLayoutConstraint]()
    var constraintsWithout = [NSLayoutConstraint]()

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.

        let v1 = UIView()
        v1.backgroundColor = UIColor.redColor()
        v1.setTranslatesAutoresizingMaskIntoConstraints(false)
        let v2 = UIView()
        v2.backgroundColor = UIColor.yellowColor()
        v2.setTranslatesAutoresizingMaskIntoConstraints(false)
        let v3 = UIView()
        v3.backgroundColor = UIColor.blueColor()
        v3.setTranslatesAutoresizingMaskIntoConstraints(false)

        self.view.addSubview(v1)
        self.view.addSubview(v2)
        self.view.addSubview(v3)

        self.v1 = v1
        self.v2 = v2
        self.v3 = v3

        let c1 = NSLayoutConstraint.constraintsWithVisualFormat("H:|-(20)-[v(100)]", options: nil, metrics: nil, views: ["v": v1]) as! [NSLayoutConstraint]
        let c2 = NSLayoutConstraint.constraintsWithVisualFormat("H:|-(20)-[v(100)]", options: nil, metrics: nil, views: ["v": v2]) as![NSLayoutConstraint]
        let c3 = NSLayoutConstraint.constraintsWithVisualFormat("H:|-(20)-[v(100)]", options: nil, metrics: nil, views: ["v": v3]) as! [NSLayoutConstraint]
        let c4 = NSLayoutConstraint.constraintsWithVisualFormat("V:|-(100)-[v(20)]", options: nil, metrics: nil, views: ["v": v1]) as! [NSLayoutConstraint]
        let c5with = NSLayoutConstraint.constraintsWithVisualFormat("V:[v1]-(20)-[v2(20)]-(20)-[v3(20)]", options: nil, metrics: nil, views: ["v1":v1, "v2": v2, "v3": v3]) as! [NSLayoutConstraint]
        let c5without = NSLayoutConstraint.constraintsWithVisualFormat("V:[v1]-(20)-[v3(20)]", options: nil, metrics: nil, views: ["v1": v1, "v3": v3]) as! [NSLayoutConstraint]

        self.constraintsWith.extend(c1)
        self.constraintsWith.extend(c2)
        self.constraintsWith.extend(c3)
        self.constraintsWith.extend(c4)
        self.constraintsWith.extend(c5with)

        self.constraintsWithout.extend(c1)
        self.constraintsWithout.extend(c3)
        self.constraintsWithout.extend(c4)
        self.constraintsWithout.extend(c5without)

        NSLayoutConstraint.activateConstraints(self.constraintsWith)

        var button = UIButton(frame: CGRectMake(10.0, 10.0, 100.0, 44.0))
        button.setTitle("switch", forState: .Normal)
        button.setTitleColor(UIColor.greenColor(), forState: .Normal)
        button.addTarget(self, action: "buttonPressed", forControlEvents: .TouchUpInside)
        self.view.addSubview(button)

        let imageView = UIImageView(image: UIImage(named: "_evernote_icon_black"))
        self.view.addSubview(imageView)

        let drawedView = UIView()
        drawedView.frame = CGRectMake(100, 400, 100, 100)
        drawedView.backgroundColor = UIColor.clearColor()
        self.view.addSubview(drawedView)

        let carfield = UIImage(named: "carfield")
        let carfieldci = CIImage(image: carfield)
        let carfieldExtent = carfieldci.extent()
        let center = CIVector(x: carfieldExtent.width/2.0, y: carfieldExtent.height/2.0)
        let smallerDimension = min(carfieldExtent.width, carfieldExtent.height)
        let largerDimension = max(carfieldExtent.width, carfieldExtent.height)
        let grad = CIFilter(name: "CIRadialGradient")
        grad.setValue(center, forKey: "inputCenter")
        grad.setValue(smallerDimension/2.0 * 0.85, forKey: "inputRadius0")
        grad.setValue(largerDimension/2.0, forKey: "inputRadius1")
        let gradImage = grad.outputImage
        let blendImage = carfieldci.imageByApplyingFilter("CIBlendWithMask", withInputParameters: [
            "inputMaskImage": gradImage
            ])

        let carfieldImageView = UIImageView()
        carfieldImageView.frame = CGRectMake(100.0, 300.0, 100.0, 100.0)
        self.view.addSubview(carfieldImageView)
        let carfieldcg = CIContext(options: nil).createCGImage(blendImage, fromRect: carfieldExtent)
        carfieldImageView.image = UIImage(CGImage: carfieldcg)

    }

    func buttonPressed() {
        if self.v2.superview != nil {
            self.v2.removeFromSuperview()
            NSLayoutConstraint.deactivateConstraints(self.constraintsWith)
            NSLayoutConstraint.activateConstraints(self.constraintsWithout)
        } else {
            self.view.addSubview(self.v2)
            NSLayoutConstraint.deactivateConstraints(self.constraintsWithout)
            NSLayoutConstraint.activateConstraints(self.constraintsWith)
        }
    }

}

