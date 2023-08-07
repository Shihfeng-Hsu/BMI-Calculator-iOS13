//
//  SecondViewController.swift
//  BMI Calculator
//
//  Created by shih-feng on 2023/8/4.
//  Copyright © 2023 Angela Yu. All rights reserved.
//

import UIKit

class SecondViewController:UIViewController{
    
    var bmiValue = "0.0"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .red
        
        let label = UILabel()
        label.text = bmiValue
        label.frame = CGRect(x: 0, y: 0, width: 100, height: 50)
        view.addSubview(label)
    }
    

}
