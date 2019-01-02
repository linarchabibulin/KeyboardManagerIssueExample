//
//  AppDelegate.swift
//  KeyboardManagerIssueExample
//
//  Created by Linar Chabibulin on 30/10/2017.
//  Copyright © 2017 Whatever. All rights reserved.
//

import UIKit
import IQKeyboardManagerSwift

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var contentWindow: UIWindow?
    var extraWindow: UIWindow?
    private var shouldUseTwoWindows = true
    private let extraWindowHeight: CGFloat = 150.0

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplicationLaunchOptionsKey: Any]?) -> Bool {
        
        IQKeyboardManager.shared.enable = true
        IQKeyboardManager.shared.enableAutoToolbar = true
        IQKeyboardManager.shared.shouldResignOnTouchOutside = true
        
        setupWindows()
        
        return true
    }
    
    private func setupWindows() {
        
        if shouldUseTwoWindows {
            setupExtraWindow()
        }
        
        var contentWindowFrame = UIScreen.main.bounds
        
        if shouldUseTwoWindows {
            contentWindowFrame.size.height -= extraWindowHeight
        }
        
        contentWindow = UIWindow(frame: contentWindowFrame)
        let contentViewController = LoginViewController()
        contentViewController.view.backgroundColor = .green
        contentWindow?.rootViewController = UINavigationController(rootViewController: contentViewController)
        contentWindow?.makeKeyAndVisible()
    }
    
    private func setupExtraWindow() {
        
        var extraWindowFrame = UIScreen.main.bounds
        extraWindowFrame.origin.y = extraWindowFrame.height - extraWindowHeight
        extraWindowFrame.size.height = extraWindowHeight
        let extraViewController = UIViewController()
        extraViewController.view.backgroundColor = .red
        extraWindow = UIWindow(frame: extraWindowFrame)
        extraWindow?.rootViewController = extraViewController
        extraWindow?.windowLevel = 1
        extraWindow?.makeKeyAndVisible()
    }
    
    // MARK: -

    func applicationWillResignActive(_ application: UIApplication) {
        // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
        // Use this method to pause ongoing tasks, disable timers, and invalidate graphics rendering callbacks. Games should use this method to pause the game.
    }

    func applicationDidEnterBackground(_ application: UIApplication) {
        // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
        // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
    }

    func applicationWillEnterForeground(_ application: UIApplication) {
        // Called as part of the transition from the background to the active state; here you can undo many of the changes made on entering the background.
    }

    func applicationDidBecomeActive(_ application: UIApplication) {
        // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
    }

    func applicationWillTerminate(_ application: UIApplication) {
        // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
    }


}

