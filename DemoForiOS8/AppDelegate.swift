//
//  AppDelegate.swift
//  DemoForiOS8
//
//  Created by mm on 4/6/15.
//  Copyright (c) 2015 Pirate. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate : UIResponder, UIApplicationDelegate {
    var window : UIWindow?
    func application(application: UIApplication, didFinishLaunchingWithOptions launchOptions: [NSObject : AnyObject]?) -> Bool {
        self.window = UIWindow(frame: UIScreen.mainScreen().bounds)
        self.window!.rootViewController = UIViewController()
        let mainView = self.window!.rootViewController!.view
        let subView = UIView(frame: CGRectMake(100, 100, 100, 100))
        subView.backgroundColor = UIColor.redColor()
        mainView.addSubview(subView)
        self.window!.backgroundColor = UIColor.whiteColor()
        self.window!.makeKeyAndVisible()
        return true
    }
}
