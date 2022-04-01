//
//  calculatorBrain.swift
//  bmi_calculator
//
//  Created by Goh Yuhan on 2022/03/31.
//

import UIKit
struct CalculatorBrain{
    var Bmi: BMI?
    let colorArray = [#colorLiteral(red: 0.4745098054, green: 0.8392156959, blue: 0.9764705896, alpha: 1), #colorLiteral(red: 0.721568644, green: 0.8862745166, blue: 0.5921568871, alpha: 1), #colorLiteral(red: 0.9098039269, green: 0.4784313738, blue: 0.6431372762, alpha: 1)]
    
    mutating func calculateBmi(height:Float, weight:Int){
        let result = Float(weight)/Float(pow(height, 2))
        let bmiValue = String(format: "%.1f", result)
        
        if result < 18.5{
            Bmi = BMI(value: bmiValue, Advice: "Eat More", color: colorArray[0])
        }else if result >= 18.5 && result <= 24.9{
            Bmi = BMI(value: bmiValue, Advice: "Doing Great, Keep It Going", color: colorArray[1])
        }else if result > 24.9{
            Bmi = BMI(value: bmiValue, Advice: "Eat Less, Execise More", color: colorArray[2])
        }
    }
    
    func getBmiValue()->String{
        return self.Bmi?.value ?? "0.0"
    }
    
    func getBmiAdvice()->String{
        return self.Bmi?.Advice ?? "No Advice"
    }
    
    func getBmiColor() ->UIColor{
        return self.Bmi?.color ?? #colorLiteral(red: 0.4745098054, green: 0.8392156959, blue: 0.9764705896, alpha: 1)
    }
}



