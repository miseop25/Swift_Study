//
//  ViewController.swift
//  studyAutoLayout
//
//  Created by Minseop Kim on 2020/02/17.
//  Copyright © 2020 Minseop Kim. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    // 버튼 및 라벨 생성
    let testButton : UIButton = UIButton(type: UIButton.ButtonType.custom)
    let testLabel : UILabel = UILabel()

    
    override func viewDidLoad() {

        super.viewDidLoad()
        self.addTestButton()
        // Do any additional setup after loading the view.
        
        testButton.addTarget(self, action: #selector(buttonClicked), for: .touchUpInside)
    }
    

    func addTestButton() {
        // 색상 설정
        
        testButton.setTitle("test button", for: .normal)
        testButton.setTitle("button Selected", for: .selected)
        
        testButton.setTitleColor(.white, for: .normal)
        testButton.backgroundColor = UIColor.black
        
//        절대적인 위치와 크기를 통해 버튼을 정의해 준것
//        testButton.frame = CGRect(x : 50, y : 50, width: 100, height: 100)

        self.view.addSubview(testButton)
        

        testButton.translatesAutoresizingMaskIntoConstraints = false
        testButton.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        testButton.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
        testButton.heightAnchor.constraint(equalToConstant: 100).isActive = true
        testButton.widthAnchor.constraint(equalToConstant: 200).isActive = true

        
        testLabel.text = "Test Label"
        testLabel.font = UIFont.systemFont(ofSize: 20)
        testLabel.textAlignment = .center
        testLabel.textColor = UIColor.black
        testLabel.backgroundColor = UIColor.systemPink
        
        self.view.addSubview(testLabel)
        
        testLabel.translatesAutoresizingMaskIntoConstraints = false
        testLabel.topAnchor.constraint(equalTo: testButton.bottomAnchor, constant: 10).isActive = true
        testLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        
        testLabel.heightAnchor.constraint(equalToConstant: 100).isActive = true
        testLabel.widthAnchor.constraint(equalToConstant: 100).isActive = true
        
        testLabel.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 40).isActive = false
        testLabel.rightAnchor.constraint(equalTo: view.rightAnchor, constant: -40).isActive = false
        
        
        
    }
    
    @objc func buttonClicked(){
        testButton.isSelected = !testButton.isSelected
        if testButton.isSelected {
            print("button Selected")
        }else {
            print("button Unselected")
        }
    }
    


}

