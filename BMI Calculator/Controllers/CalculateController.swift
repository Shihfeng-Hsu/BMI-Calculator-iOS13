//
//  ViewController.swift
//  BMI Calculator
//
//  Created by Angela Yu on 21/08/2019.
//  Copyright © 2019 Angela Yu. All rights reserved.
//

import UIKit

class CalculateController: UIViewController {
    
    var calculatorBrain = CalculatorBrain()
  
    
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
        calculatorBrain.BMICalculator(weight: weight, height: height)
        
        self.performSegue(withIdentifier: "goToResult", sender: self)
        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
  
        if segue.identifier == "goToResult" {
            //narrow down the data type and specify the exact data type "ResultViewController" instead of the origin ViewController.
            //So call "Downcasting".
            // as! is for a forced downcasting.
            let destinationVC = segue.destination as! ResultViewController
            destinationVC.bmiValue = calculatorBrain.getBMI()
            
            /*
            // MARK: - Navigation

            // In a storyboard-based application, you will often want to do a little preparation before navigation
            override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
                // Get the new view controller using segue.destination.
                // Pass the selected object to the new view controller.
            }
            */
        }
    }
    
}
