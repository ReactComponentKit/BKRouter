//
//  ColorViewController.swift
//  NabiApp
//
//  Created by burt on 2018. 3. 9..
//  Copyright © 2018년 skyfe79. All rights reserved.
//

import UIKit
import BKRouter

class ColorViewController: UIViewController {
    
    var color: UIColor = UIColor.white
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = color
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    @IBAction func clickedNextButton(_ sender: Any) {
        Router.shared.push(from: self, to: "myapp://domainB?title=Hello")
    }
}

