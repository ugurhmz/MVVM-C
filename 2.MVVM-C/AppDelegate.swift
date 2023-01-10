//
//  AppDelegate.swift
//  2.MVVM-C
//
//  Created by Ugur Hamzaoglu on 10.01.2023.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {


      var window: UIWindow?
      var mainCoordinator: MainCoordinator?

      func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
          // Override point for customization after application launch.
          let navController = UINavigationController()
          mainCoordinator = MainCoordinator(navigationController: navController)
          mainCoordinator?.start()
          window = UIWindow(frame: UIScreen.main.bounds)
          window?.rootViewController = navController
          window?.makeKeyAndVisible()
          return true
      }

}

