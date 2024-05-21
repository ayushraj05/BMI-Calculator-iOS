//
//  BMI_logic.swift
//  BMI Calculator
//
//  Created by Ayush Rajpal on 20/05/24.
//

import UIKit

struct BMI_logic {
    
    var bmi: BMI?
    
    mutating func calculateBMI(height: Float, weight: Float){
        let bmiValue = weight / pow(height, 2)
        if bmiValue < 18.5 {
            bmi = BMI(value: bmiValue, advice: "Eat more pies", color: #colorLiteral(red: 0.4745098054, green: 0.8392156959, blue: 0.9764705896, alpha: 1))
        }
        else if bmiValue < 24.9 {
            bmi = BMI(value: bmiValue, advice: "Fit as fiddle", color: #colorLiteral(red: 0.4666666687, green: 0.7647058964, blue: 0.2666666806, alpha: 1))
        }
        else{
            bmi = BMI(value: bmiValue, advice: "Eat less pies", color: #colorLiteral(red: 0.9254902005, green: 0.2352941185, blue: 0.1019607857, alpha: 1))
        }
    }
    
    func getBMIvalue() -> String{
        let bmiToOneDecimalPlace = String(format: "%.2f", bmi?.value ?? 0.0)
        return bmiToOneDecimalPlace
    }
    
    func getAdvice() ->String{
        return bmi?.advice ?? "No advice"
    }
    
    func getColor() ->UIColor{
        return bmi?.color ?? UIColor.white
    }
    
//    let color =
    
}
