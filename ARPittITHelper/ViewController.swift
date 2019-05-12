//
//  ViewController.swift
//  ARPittITHelper
//
//  Created by Xinke Chen on 2019-05-03.
//  Copyright © 2019 Xinke Chen. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        print("\(OpenCVWrapper.openCVVersionString() ?? "N/A")")
    }


}

