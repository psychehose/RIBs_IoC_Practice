//
//  AppDelegate.swift
//  NetworkLayer
//
//  Created by KIM HOSE on 2022/06/30.
//  Copyright © 2022 com.devhose. All rights reserved.
//


import RIBs
import UIKit

@main
class AppDelegate: UIResponder, UIApplicationDelegate {

  var window: UIWindow?
  private var launchRouter: LaunchRouting?

  func application(
    _ application: UIApplication,
    didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey : Any]? = nil
  ) -> Bool {

    let window = UIWindow(frame: UIScreen.main.bounds)
    window.backgroundColor = .white
    window.rootViewController = UIViewController()
    window.makeKeyAndVisible()
    self.window = window

    let result = RootBuilder(dependency: AppComponent()).build()
    self.launchRouter = result

    launchRouter?.launch(from: window)

    return true
  }
}
