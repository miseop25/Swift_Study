//
//  ViewController.swift
//  AnimateStudy
//
//  Created by Minseop Kim on 2020/11/17.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var videoView: UIView!
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        videoView.alpha = 0
        
    }
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        
        UIView.animate(withDuration: 1,delay: 0.1, animations: ({
            self.videoView.alpha = 1
            self.videoView.frame = CGRect(x: 150, y: 100, width: 100, height: 100)

            self.videoView.backgroundColor = UIColor.systemBlue
        })
        )

        print("alpa : ",self.videoView.alpha)
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        self.videoView.backgroundColor = UIColor.black
        self.videoView.frame = CGRect(x: 50, y: 50, width: 50, height: 50)
    }


}

