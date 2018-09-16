//
//  NabiDomainBConvertor.swift
//  DomainB
//
//  Created by burt on 2018. 3. 9..
//  Copyright © 2018년 skyfe79. All rights reserved.
//

import Foundation
import BKRouter

public class RouteDomainB: Routerable {
    public static func route(scheme: String, host: String, params: [String : String], userData:[String: Any]?) -> UIViewController? {
        // storyboard
        guard let title = params["title"] else { return nil }
        let viewModel = DomainBViewModel(title: title)
        let vc = DomainBViewController(viewModel: viewModel)
        return vc
    }
}

