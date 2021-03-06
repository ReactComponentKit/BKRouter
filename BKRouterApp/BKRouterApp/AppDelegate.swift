//
//  AppDelegate.swift
//  BKRouterApp
//
//  Created by burt on 2018. 9. 16..
//  Copyright © 2018년 Burt.K. All rights reserved.
//

import UIKit
import BKRouter
import DomainA
import DomainB

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplicationLaunchOptionsKey: Any]?) -> Bool {
        #if DEBUG
        Router.shared.add(sideEffect: LoggingRoute.self)
        #endif
        Router.shared.map(url: "myapp://main?title=$value&a=$v1&b=v2", to: RouteMain.self)
        Router.shared.map(url: "myapp://color?color=$value", to: RouteColor.self)
        Router.shared.map(url: "myapp://domainA", to: RouteDomainA.self)
        Router.shared.map(url: "myapp://domainB?title=$value", to: RouteDomainB.self)
        
        
        // You can make a route map group.
        Router.on("travel").map(url: "myapp://travel?page=$v1&keyword=$v2", to: RouteColor.self)
        // You can route the travel group
        // Router.on("travel").push(...)
        
        return true
    }
    
    func application(_ app: UIApplication, open url: URL, options: [UIApplicationOpenURLOptionsKey : Any] = [:]) -> Bool {
        Router.shared.replace(to: url.absoluteString, wrapNavigationController: true)
        return true
    }

    func applicationWillResignActive(_ application: UIApplication) {
    }

    func applicationDidEnterBackground(_ application: UIApplication) {
    }

    func applicationWillEnterForeground(_ application: UIApplication) {
    }

    func applicationDidBecomeActive(_ application: UIApplication) {
    }

    func applicationWillTerminate(_ application: UIApplication) {
    }
}

