//
//  ViewController.swift
//  BMI Calculator
//
//  Created by Angela Yu on 21/08/2019.
//  Copyright © 2019 Angela Yu. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var heightLabel: UILabel!
    @IBOutlet weak var weightLabel: UILabel!
    @IBOutlet weak var heightSlider: UISlider!
    @IBOutlet weak var weightSlider: UISlider!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func heightSliderChanged(_ sender: UISlider) {
//        String(format: "%.2f", sender.value)
        heightLabel.text = "\(round(sender.value*100)/100.0) m"
    }
    
    @IBAction func weightSliderChanged(_ sender: UISlider) {
//        Int(sender.value)
        weightLabel.text = "\(round(sender.value)) kg"
    }
    @IBAction func calculatePressed(_ sender: UIButton) {
        let height = heightSlider.value
        let weight = weightSlider.value
        let BMI = weight / (height*height)
        print(BMI)
        
        let secondVC = SecondViewController()
        secondVC.bmiValue = String(format: "%.1f",BMI)
        
        self.present(secondVC, animated: true,completion: nil)
        
    }
}

