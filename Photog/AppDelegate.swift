//
//  AppDelegate.swift
//  Photog
//
//  Created by vincent on 4/5/15.
//  Copyright (c) 2015 vincent. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?


    func application(application: UIApplication, didFinishLaunchingWithOptions launchOptions: [NSObject: AnyObject]?) -> Bool {
        
        self.setupParse()
        
        self.setupAppAppearance()
        
        self.window = UIWindow(frame: UIScreen.mainScreen().bounds)
        
        var navigationController = UINavigationController()
        var startViewController = StartViewController(nibName: "StartViewController", bundle: nil)
//        startViewController.view.backgroundColor = UIColor.yellowColor()
        
        if PFUser.currentUser() == nil
        
        {
                navigationController.viewControllers = [startViewController]
        }
        else
        {
            println("user does indeed exist")
        }
        
        self.window!.rootViewController = navigationController
        self.window!.makeKeyAndVisible()
        
       
        
        
        return true
    }
    
    func setupParse()
    {
        Parse.setApplicationId("r8OkHGzHNoYUt89uU19s0XNCBNNE3wc9wjP22nMH", clientKey:"ImT79XcVexgQ7DAC3dJqjiN7GSwE1Qzv6MJZMltk")
        
    }
    
    func setupAppAppearance()
    {
        UIApplication.sharedApplication().statusBarStyle = .LightContent
        
        UINavigationBar.appearance().barTintColor = UIColor.blackColor()
        UINavigationBar.appearance().tintColor = UIColor.whiteColor()
        UINavigationBar.appearance().titleTextAttributes = [NSForegroundColorAttributeName : UIColor.whiteColor()]
        UITabBar.appearance().barTintColor = UIColor.blackColor()
        UITabBar.appearance().tintColor = UIColor.whiteColor()
        UITabBar.appearance().selectionIndicatorImage = UIImage(named: "SelectedTabBackground")
    }
    func applicationWillResignActive(application: UIApplication) {
        // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
        // Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
    }

    func applicationDidEnterBackground(application: UIApplication) {
        // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
        // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
    }

    func applicationWillEnterForeground(application: UIApplication) {
        // Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.
    }

    func applicationDidBecomeActive(application: UIApplication) {
        // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
    }

    func applicationWillTerminate(application: UIApplication) {
        // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
    }


}

