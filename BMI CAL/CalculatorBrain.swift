//
//  File.swift
//  BMI Calculator
//
//  Created by sagar on 09/07/21.
//  Copyright © 2021 Angela Yu. All rights reserved.
//

import UIKit

struct CalculatorBrain {
    
    var bmi: BMI?
    mutating func calculateBMI(height: Float, weight: Float){
       let bmiValue = weight / (height * height)
        
        if bmiValue < 18.5{
            bmi = BMI(value:bmiValue, advice: "Eat more", color: UIColor.blue )
        }else if bmiValue >18.5 && bmiValue < 24.9{
            bmi = BMI(value:bmiValue, advice: "Fit as a fiddle", color: UIColor.green )
        }else{
            bmi = BMI(value:bmiValue, advice: "Eat less workout more", color: UIColor.red )        }
        
    }
    
    func getAdvice() -> String{
        return bmi?.advice ?? "No Advice"
        
    }
    
    func getColor() -> UIColor {
        return bmi?.color ?? UIColor.white
    }
    
    func getBMIValue() -> String {
//        if let safeBMI = bmi {
//            let bmiTo1DecimalPlace = String(format: "%.1f" , safeBMI)
//            return bmiTo1DecimalPlace
//        }else{
//            return "0.0"
//        }
        
        let bmiTo1DecimalPlace = String(format: "%.1f" , bmi?.value ?? 0.0 )
        return bmiTo1DecimalPlace
    }
}
