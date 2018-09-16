//
//  RedViewControllerConvertor.swift
//  NabiApp
//
//  Created by burt on 2018. 3. 9..
//  Copyright © 2018년 skyfe79. All rights reserved.
//

import UIKit
import BKRouter

// nabi://color
class RouteColor: Routerable {
    static func route(scheme: String, host: String, params: [String : String], userData:[String: Any]?) -> UIViewController? {
        // storyboard
        let vc = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "ColorViewController")
        
        if let colorVC = vc as? ColorViewController {
            if let color = params["color"] {
                switch color {
                case "red":
                    colorVC.color = UIColor.red
                case "blue":
                    colorVC.color = UIColor.blue
                case "green":
                    colorVC.color = UIColor.green
                default:
                    colorVC.color = UIColor.white
                }
            }
        }
        
        return vc
    }
}
