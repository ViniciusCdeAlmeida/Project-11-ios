//
//  CalculatorBrain.swift
//  BMI Calculator
//
//  Created by Apple Multiplier on 07/01/24.
//  Copyright © 2024 Angela Yu. All rights reserved.
//

import Foundation
import UIKit

struct CalculatorBrain {
    var bmi:BMI?
    
    mutating func calculateBMI(height:Float,weight:Float){
        
        let bmiValue = weight / pow(height,2)
        print(bmiValue)
        if bmiValue < 18.5 {
           bmi = BMI(value: bmiValue, advice: "Eat more", color: UIColor.red)
        } else if bmiValue < 24.9 {
            bmi = BMI(value: bmiValue, advice: "In fit way", color: UIColor.blue)
        } else {
            bmi = BMI(value: bmiValue, advice: "Eat less", color: UIColor.green)
        }
    }
    
    func getBMIValue() -> String{
        let bmiToString = String(format: "%.1f", bmi?.value ?? 0.0)
        return bmiToString
    }
    
    func getColor() -> UIColor{
        return bmi?.color ?? UIColor.black
    }
    
    func getAdvice() -> String{
        return bmi?.advice ?? "Ops it's not available"
    }
}
