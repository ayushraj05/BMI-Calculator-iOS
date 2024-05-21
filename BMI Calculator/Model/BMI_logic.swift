//
//  BMI_logic.swift
//  BMI Calculator
//
//  Created by Ayush Rajpal on 20/05/24.
//

import Foundation

struct BMI_logic {

    var bmi : Float = 0.00
    
    mutating func calculateBMI(height: Float, weight: Float){
        bmi = weight / pow(height, 2)
    }
    
    func getBMIvalue() -> String{
        let bmiToOneDecimalPlace = String(format: "%.1f", bmi)
        return bmiToOneDecimalPlace
    }
    
}
