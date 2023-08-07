//
//  CalculatorBrain.swift
//  BMI Calculator
//
//  Created by shih-feng on 2023/8/7.
//  Copyright © 2023 Angela Yu. All rights reserved.
//
import Foundation

struct CalculatorBrain{
    
    var bmiValue = "0.0"
    
    mutating func BMICalculator(weight:Float, height:Float){
        let BMI = weight / (height*height)
       
        bmiValue = String(format: "%.1f", BMI)
        print(BMI,bmiValue)
    }
    
    mutating func getBMI() -> String{
        return bmiValue
    }
    

}
