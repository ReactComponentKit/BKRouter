//
//  ViewController.swift
//  BKRouterApp
//
//  Created by burt on 2018. 9. 16..
//  Copyright © 2018년 Burt.K. All rights reserved.
//

import UIKit
import BKRouter

class MainViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    @IBAction func clickedRedButton(_ sender: Any) {
        Router.shared.push(from: self, to: "myapp://color?color=red", userData: ["A": 1])
    }
    
    @IBAction func clickedGreenButton(_ sender: Any) {
        Router.shared.push(from: self, to: "myapp://color?color=green")
    }
    
    @IBAction func clickedBlueButton(_ sender: Any) {
        Router.shared.push(from: self, to: "myapp://color?color=blue")
    }
}

