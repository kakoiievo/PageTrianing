//
//  AppDelegate.swift
//  PageChange
//
//  Created by Yung on 2018/10/5.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate
{

    var window: UIWindow?

    
    //此事件只會在第一次使用app 時被 呼叫！
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        // Override point for customization after application launch.
        
        print(" loading app")
        
        if let options = launchOptions
        {
            print("\(options)")
        }
        
        return true
    }

    func applicationWillResignActive(_ application: UIApplication) {
        
        print("app 即將進入背景")
        
    }

    func applicationDidEnterBackground(_ application: UIApplication) {
        
        print("App進入背景")
    }

    func applicationWillEnterForeground(_ application: UIApplication) {
        // Called as part of the transition from the background to the active state; here you can undo many of the changes made on entering the background.
        print("app即將從背景回到前景")
    }

    func applicationDidBecomeActive(_ application: UIApplication) {
        // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
        
        print("start app")
    }

    func applicationWillTerminate(_ application: UIApplication) {
        
        print("App終⽌止")
    }


}

