//
//  NabiToMainConvertor.swift
//  NabiApp
//
//  Created by burt on 2018. 3. 8..
//  Copyright © 2018년 skyfe79. All rights reserved.
//

import Foundation
import BKRouter

class RouteMain: Routerable {
    static func route(scheme: String, host: String, params: [String : String], userData:[String: Any]?) -> UIViewController? {
        // storyboard
        let vc = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "MainViewController")
        return vc
    }
}
