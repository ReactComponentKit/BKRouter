//
//  LoggingNabi.swift
//  NabiApp
//
//  Created by burt on 2018. 3. 9..
//  Copyright © 2018년 skyfe79. All rights reserved.
//

import UIKit
import BKRouter

enum LoggingRoute: RouteSideEffect {
    static func sideEffect(vc: UIViewController, url: String, userData: [String : Any]?) {

        if let userData = userData {
            print("\(url) -> \(String(describing: type(of: vc)))\n:: with userData ::\n\(userData)")
        } else {
            print("\(url) -> \(String(describing: type(of: vc))) :: without userData")
        }
        print("------------------------------------------------------------------------------------")
    }
}
