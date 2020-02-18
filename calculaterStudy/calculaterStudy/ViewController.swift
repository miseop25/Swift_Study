//
//  ViewController.swift
//  calculaterStudy
//
//  Created by Minseop Kim on 2020/02/18.
//  Copyright © 2020 Minseop Kim. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    let button0 : UIButton = UIButton()
    let button1 : UIButton = UIButton()
    let button2 : UIButton = UIButton()
    let button3 : UIButton = UIButton()
    let button4 : UIButton = UIButton()
    let button5 : UIButton = UIButton()
    let button6 : UIButton = UIButton()
    let button7 : UIButton = UIButton()
    let button8 : UIButton = UIButton()
    let button9 : UIButton = UIButton()
    
    let plusButton : UIButton = UIButton()
    let minusButton : UIButton = UIButton()
    let multButton : UIButton = UIButton()
    let devideButton : UIButton = UIButton()
    let resultButton : UIButton = UIButton()
    let clearButton : UIButton = UIButton()
    
    let showCalc : UILabel = UILabel()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.setTitle()
        self.setConstraint()
        
        // Do any additional setup after loading the view.
    }
    
    @available(iOS 11.0, *)
    func setConstraint() {
        let margin  = view.safeAreaLayoutGuide
        
        showCalc.translatesAutoresizingMaskIntoConstraints = false
        showCalc.topAnchor.constraint(equalTo: margin.topAnchor ).isActive = true
        showCalc.leftAnchor.constraint(equalTo: margin.leftAnchor, constant: 10).isActive = true
        showCalc.rightAnchor.constraint(equalTo: margin.rightAnchor, constant: -10 ).isActive = true
        showCalc.heightAnchor.constraint(equalToConstant: 300).isActive = true
        
        
        button1.translatesAutoresizingMaskIntoConstraints = false
        button1.topAnchor.constraint(equalTo: showCalc.bottomAnchor, constant: 10).isActive = true
        button1.leftAnchor.constraint(equalTo: margin.leftAnchor, constant: 0 ).isActive = true
        button1.widthAnchor.constraint(equalToConstant: 100).isActive = true
        button1.heightAnchor.constraint(equalToConstant: 100).isActive = true

        button2.translatesAutoresizingMaskIntoConstraints = false
        button2.topAnchor.constraint(equalTo: showCalc.bottomAnchor, constant: 10).isActive = true
        button2.leftAnchor.constraint(equalTo: button1.rightAnchor, constant: 5 ).isActive = true
        button2.widthAnchor.constraint(equalToConstant: 100).isActive = true
        button2.heightAnchor.constraint(equalToConstant: 100).isActive = true
        
        button3.translatesAutoresizingMaskIntoConstraints = false
        button3.topAnchor.constraint(equalTo: showCalc.bottomAnchor, constant: 10).isActive = true
        button3.leftAnchor.constraint(equalTo: button2.rightAnchor, constant: 5 ).isActive = true
        button3.widthAnchor.constraint(equalToConstant: 100).isActive = true
        button3.heightAnchor.constraint(equalToConstant: 100).isActive = true
        
        plusButton.translatesAutoresizingMaskIntoConstraints = false
        plusButton.topAnchor.constraint(equalTo: showCalc.bottomAnchor, constant: 10).isActive = true
        plusButton.leftAnchor.constraint(equalTo: button3.rightAnchor, constant: 5).isActive = true
        plusButton.rightAnchor.constraint(equalTo: margin.rightAnchor, constant: 0).isActive = true
        plusButton.bottomAnchor.constraint(equalTo: button3.bottomAnchor).isActive = true
        
        button4.translatesAutoresizingMaskIntoConstraints = false
        button4.topAnchor.constraint(equalTo: button1.bottomAnchor, constant: 5).isActive = true
        button4.leftAnchor.constraint(equalTo: margin.leftAnchor).isActive = true
        button4.rightAnchor.constraint(equalTo: button1.rightAnchor).isActive = true
        button4.heightAnchor.constraint(equalToConstant: 100).isActive = true
        
        button5.translatesAutoresizingMaskIntoConstraints = false
        button5.topAnchor.constraint(equalTo: button4.topAnchor).isActive = true
        button5.leftAnchor.constraint(equalTo: button4.rightAnchor, constant: 5).isActive = true
        button5.rightAnchor.constraint(equalTo: button2.rightAnchor).isActive = true
        button5.heightAnchor.constraint(equalToConstant: 100).isActive = true
        
        button6.translatesAutoresizingMaskIntoConstraints = false
        button6.topAnchor.constraint(equalTo: button5.topAnchor).isActive = true
        button6.leftAnchor.constraint(equalTo: button5.rightAnchor, constant: 5).isActive = true
        button6.rightAnchor.constraint(equalTo: button3.rightAnchor).isActive = true
        button6.bottomAnchor.constraint(equalTo: button5.bottomAnchor).isActive = true
        
        minusButton.translatesAutoresizingMaskIntoConstraints = false
        minusButton.topAnchor.constraint(equalTo: plusButton.bottomAnchor, constant: 5).isActive = true
        minusButton.bottomAnchor.constraint(equalTo: button6.bottomAnchor).isActive = true
        minusButton.leftAnchor.constraint(equalTo: button6.rightAnchor, constant: 5).isActive = true
        minusButton.rightAnchor.constraint(equalTo: margin.rightAnchor).isActive = true
        
        button7.translatesAutoresizingMaskIntoConstraints = false
        button7.topAnchor.constraint(equalTo: button4.bottomAnchor, constant: 5).isActive = true
        button7.leftAnchor.constraint(equalTo: margin.leftAnchor).isActive = true
        button7.heightAnchor.constraint(equalToConstant: 100).isActive = true
        button7.widthAnchor.constraint(equalToConstant: 100).isActive = true
        
        button8.translatesAutoresizingMaskIntoConstraints = false
        button8.topAnchor.constraint(equalTo: button7.topAnchor).isActive = true
        button8.leftAnchor.constraint(equalTo: button7.rightAnchor, constant: 5).isActive = true
        button8.widthAnchor.constraint(equalToConstant: 100).isActive = true
        button8.heightAnchor.constraint(equalToConstant: 100).isActive = true
        
        button9.translatesAutoresizingMaskIntoConstraints = false
        button9.topAnchor.constraint(equalTo: button7.topAnchor).isActive = true
        button9.leftAnchor.constraint(equalTo: button8.rightAnchor, constant: 5).isActive = true
        button9.heightAnchor.constraint(equalToConstant: 100).isActive = true
        button9.widthAnchor.constraint(equalToConstant: 100).isActive = true
        
        multButton.translatesAutoresizingMaskIntoConstraints = false
        multButton.topAnchor.constraint(equalTo: button7.topAnchor).isActive = true
        multButton.leftAnchor.constraint(equalTo: button9.rightAnchor, constant: 5).isActive = true
        multButton.rightAnchor.constraint(equalTo: margin.rightAnchor).isActive = true
        multButton.heightAnchor.constraint(equalToConstant: 100).isActive = true
        
        button0.translatesAutoresizingMaskIntoConstraints = false
        button0.topAnchor.constraint(equalTo: button7.bottomAnchor, constant: 5).isActive = true
        button0.leftAnchor.constraint(equalTo: margin.leftAnchor).isActive = true
        button0.rightAnchor.constraint(equalTo: button8.rightAnchor).isActive = true
        button0.heightAnchor.constraint(equalToConstant: 100).isActive = true
        
        resultButton.translatesAutoresizingMaskIntoConstraints = false
        resultButton.topAnchor.constraint(equalTo: button0.topAnchor).isActive = true
        resultButton.leftAnchor.constraint(equalTo: button0.rightAnchor, constant: 5).isActive = true
        resultButton.widthAnchor.constraint(equalToConstant: 100).isActive = true
        resultButton.heightAnchor.constraint(equalToConstant: 100).isActive = true
        
        devideButton.translatesAutoresizingMaskIntoConstraints = false
        devideButton.topAnchor.constraint(equalTo: button0.topAnchor).isActive = true
        devideButton.leftAnchor.constraint(equalTo: resultButton.rightAnchor, constant: 5).isActive = true
        devideButton.rightAnchor.constraint(equalTo: margin.rightAnchor).isActive = true
        devideButton.heightAnchor.constraint(equalToConstant: 100).isActive = true
        
        clearButton.translatesAutoresizingMaskIntoConstraints = false
        clearButton.topAnchor.constraint(equalTo: button0.bottomAnchor, constant: 5).isActive = true
        clearButton.leftAnchor.constraint(equalTo: margin.leftAnchor).isActive = true
        clearButton.rightAnchor.constraint(equalTo: margin.rightAnchor).isActive = true
        clearButton.bottomAnchor.constraint(equalTo: margin.bottomAnchor).isActive = true
        
        
        
        
        
    }
    
    
    func setTitle() {
        
        button0.setTitle("0", for: .normal)
        button1.setTitle("1", for: .normal)
        button2.setTitle("2", for: .normal)
        button3.setTitle("3", for: .normal)
        button4.setTitle("4", for: .normal)
        button5.setTitle("5", for: .normal)
        button6.setTitle("6", for: .normal)
        button7.setTitle("7", for: .normal)
        button8.setTitle("8", for: .normal)
        button9.setTitle("9", for: .normal)
        
        
        
        
        plusButton.setTitle("+", for: .normal)
        minusButton.setTitle("-", for: .normal)
        devideButton.setTitle("/", for: .normal)
        multButton.setTitle("X", for: .normal)
        resultButton.setTitle("=", for: .normal)
        clearButton.setTitle("AC", for: .normal)
        
        button0.setTitleColor(.white, for: .normal)
        button1.setTitleColor(.white, for: .normal)
        button2.setTitleColor(.white, for: .normal)
        button3.setTitleColor(.white, for: .normal)
        button4.setTitleColor(.white, for: .normal)
        button5.setTitleColor(.white, for: .normal)
        button6.setTitleColor(.white, for: .normal)
        button7.setTitleColor(.white, for: .normal)
        button8.setTitleColor(.white, for: .normal)
        button9.setTitleColor(.white, for: .normal)
        
        plusButton.setTitleColor(.black, for: .normal)
        minusButton.setTitleColor(.black, for: .normal)
        multButton.setTitleColor(.black, for: .normal)
        devideButton.setTitleColor(.black, for: .normal)
        resultButton.setTitleColor(.black, for: .normal)
        clearButton.setTitleColor(.black, for: .normal)
        
        
        button0.backgroundColor = UIColor.gray
        button1.backgroundColor = UIColor.gray
        button2.backgroundColor = UIColor.gray
        button3.backgroundColor = UIColor.gray
        button4.backgroundColor = UIColor.gray
        button5.backgroundColor = UIColor.gray
        button6.backgroundColor = UIColor.gray
        button7.backgroundColor = UIColor.gray
        button8.backgroundColor = UIColor.gray
        button9.backgroundColor = UIColor.gray
        
        plusButton.backgroundColor = UIColor.orange
        minusButton.backgroundColor = UIColor.orange
        multButton.backgroundColor = UIColor.orange
        devideButton.backgroundColor = UIColor.orange
        resultButton.backgroundColor = UIColor.orange
        clearButton.backgroundColor = UIColor.orange
        
        showCalc.text = "0"
        showCalc.textColor = UIColor.black
        showCalc.backgroundColor = UIColor.white
        showCalc.textAlignment = .right
        
        self.view.addSubview(button0)
        self.view.addSubview(button1)
        self.view.addSubview(button2)
        self.view.addSubview(button3)
        self.view.addSubview(button4)
        self.view.addSubview(button5)
        self.view.addSubview(button6)
        self.view.addSubview(button7)
        self.view.addSubview(button8)
        self.view.addSubview(button9)
        
        self.view.addSubview(plusButton)
        self.view.addSubview(minusButton)
        self.view.addSubview(multButton)
        self.view.addSubview(devideButton)
        self.view.addSubview(resultButton)
        self.view.addSubview(clearButton)
        
        self.view.addSubview(showCalc)
        
    }
    

}

