//
//  SecondViewController.swift
//  DelegateStudy
//
//  Created by Minseop Kim on 2020/11/14.
//

import UIKit

class SecondViewController: UIViewController {
    weak var delegate: DeliveryDataProtocol?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func preButtonAction(_ sender: Any) {
        delegate?.deliveryData("Delegate Test")
        self.dismiss(animated: true, completion: nil)
    }
    



}
