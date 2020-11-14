//
//  FirstViewController.swift
//  DelegateStudy
//
//  Created by Minseop Kim on 2020/11/14.
//

import UIKit

class FirstViewController: UIViewController, DeliveryDataProtocol {

    
    @IBOutlet weak var dataLabel: UILabel!
    
    @IBOutlet weak var nextButton: UIButton!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        dataLabel.isHidden = true
        dataLabel.tintColor = UIColor.black
        

        // Do any additional setup after loading the view.
    }
    
    @IBAction func nextButtonAction(_ sender: Any) {
        guard let vc = self.storyboard?.instantiateViewController(withIdentifier: "SecondViewController") as? SecondViewController else {return}
        vc.delegate = self
        self.present(vc, animated: true, completion: nil)
    
    }
    
    func deliveryData(_ data: String) {
        dataLabel.isHidden = false
        print("delivery Data OK")
        dataLabel.text = data

    }
    
}

protocol DeliveryDataProtocol: class {
    func deliveryData(_ data: String)
}

