//
//  ViewController.swift
//  HelloSwiftProject
//
//  Created by Minseop Kim on 2020/03/17.
//  Copyright © 2020 Minseop Kim. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBOutlet weak var testLabel: UILabel!
    
    @IBAction func button_touched(_ sender: Any) {
        testLabel.text = "Hello Swift"
    }
}

