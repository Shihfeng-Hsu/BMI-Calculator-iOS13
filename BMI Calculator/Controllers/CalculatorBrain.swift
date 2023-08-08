//
//  CalculatorBrain.swift
//  BMI Calculator
//
//  Created by shih-feng on 2023/8/7.
//  Copyright © 2023 Angela Yu. All rights reserved.
//

import UIKit

struct CalculatorBrain{
    
//    var bmiValue = "0.0"
//
//    mutating func BMICalculator(weight:Float, height:Float){
//        let BMI = weight / (height*height)
//
//        bmiValue = String(format: "%.1f", BMI)
//        print(BMI,bmiValue)
//    }
//
//    mutating func getBMI() -> String{
//        return bmiValue
//    }
    
    var bmiValue: BMI?
    
    mutating func BMICalculator(weight:Float, height:Float){
        let thinColor = #colorLiteral(red: 0.3498018526, green: 0.68874763, blue: 1, alpha: 1)
        let fitColor = #colorLiteral(red: 0.3411764801, green: 0.6235294342, blue: 0.1686274558, alpha: 1)
        let fatColor = #colorLiteral(red: 0.8549019694, green: 0.250980407, blue: 0.4784313738, alpha: 1)
        
        
        let bmiValueData = weight / (height*height)
        if bmiValueData < 18.5 {
            bmiValue = BMI(value: bmiValueData, advice: "Eat More", color: thinColor
                           
    )
        }else if  bmiValueData < 24.9  {
            bmiValue = BMI(value: bmiValueData, advice: "Keep going", color: fitColor)
        }else if bmiValueData > 24.9 {
            bmiValue = BMI(value: bmiValueData, advice: "Eat less", color: fatColor)
        }
       
    }
    
    mutating func getBMI() -> String{
        let BMITo1DecimalPlace = String(format: "%.1f", bmiValue?.value ?? 0.0 )
        return BMITo1DecimalPlace
    }
    func getAdvice() -> String?{
        return bmiValue?.advice ?? ""
    }
    func getColor() -> UIColor?{
        return bmiValue?.color ?? UIColor.white
    }
    

}
