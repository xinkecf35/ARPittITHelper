//
//  ViewController.swift
//  ARPittITHelper
//
//  Created by Xinke Chen on 2019-05-03.
//  Copyright © 2019 Xinke Chen. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    let taskArray = ["Setting up Pitt WiFi", "Logging into Pitt Passport", "Activating Office 365"]
    
    @IBOutlet weak var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        tableView.delegate = self
        tableView.dataSource = self
        print("\(OpenCVWrapper.openCVVersionString() ?? "N/A")")
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return taskArray.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "taskTableViewCell", for: indexPath)
        cell.textLabel!.text = taskArray[indexPath.row]
        return cell
    }

}

