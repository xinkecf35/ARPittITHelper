//
//  ARSceneController.swift
//  ARPittITHelper
//
//  Created by Xinke Chen on 6/20/19.
//  Copyright © 2019 Xinke Chen. All rights reserved.
//

import Foundation
import ARKit
import SpriteKit

class ARSceneController: ViewController, ARSKViewDelegate {
    @IBOutlet var taskARView: ARSKView!
    
    @IBAction func exitARView(_ sender: UIButton) {
        dismiss(animated: true, completion: nil)
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(true)
        let configuration = ARWorldTrackingConfiguration()
        taskARView.session.run(configuration, options: [])
    }
    
    override func viewDidLoad() {
        print("Preparing AR view")
        taskARView.delegate = self
        print(taskARView.session.configuration ?? "No config")
        if let scene = SKScene(fileNamed: "taskScene") {
            taskARView.presentScene(scene)
        }
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(true)
        taskARView.session.pause()
    }
    
}
