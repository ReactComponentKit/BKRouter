//
//  DomainAViewModel.swift
//  DomainA
//
//  Created by burt on 2018. 3. 9..
//  Copyright © 2018년 skyfe79. All rights reserved.
//

import Foundation

public class DomainAViewModel {
    private let havyItemArray: [String]

    public init(havyItemArray: [String]) {
        self.havyItemArray = havyItemArray
    }

    var text: String {
        return havyItemArray.joined(separator: "\n")
    }
}
