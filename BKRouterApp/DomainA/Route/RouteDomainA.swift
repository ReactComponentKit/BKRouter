//
//  NabiDomainAConvertor.swift
//  DomainA
//
//  Created by burt on 2018. 3. 9..
//  Copyright © 2018년 skyfe79. All rights reserved.
//

import Foundation
import BKRouter

public class RouteDomainA: Routerable {
    public static func route(scheme: String, host: String, params: [String : String], userData:[String: Any]?) -> UIViewController? {
        // storyboard
        guard let items = userData?["items"] as? [String] else { return nil }
        let viewModel = DomainAViewModel(havyItemArray: items)
        let vc = DomainAViewController(viewModel: viewModel)
        return vc
    }
}
