//
//  ViewController.swift
//  bmi_calculator
//
//  Created by Goh Yuhan on 2022/03/31.
//

import UIKit

class CalculateViewController: UIViewController {

    var calculatorBrain = CalculatorBrain()
    
    @IBOutlet weak var heightLabel: UILabel!
    @IBOutlet weak var weightLabel: UILabel!
    
    @IBOutlet weak var heightSliderLabel: UISlider!
    @IBOutlet weak var weightSliderValue: UISlider!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func heightSliderChanged(_ sender: UISlider) {
        let value = round(sender.value * 100) / 100.0
        heightLabel.text = "\(value)m"
    }
    
    @IBAction func weightSliderChanged(_ sender: UISlider) {
        let value = Int(round(sender.value))
        weightLabel.text = "\(value)Kg"
    }
    
    @IBAction func calculateButton(_ sender: UIButton) {
        let height = round(heightSliderLabel.value * 100) / 100.0
        let weight = Int(round(weightSliderValue.value))
        
        calculatorBrain.calculateBmi(height: height, weight: weight)
        self.performSegue(withIdentifier: "goToResult", sender: self)
        heightSliderLabel.value = 0
        weightSliderValue.value = 0
        heightLabel.text = "0.0m"
        weightLabel.text = "0Kg"
        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "goToResult"{
            let destinationVC = segue.destination as!ResultViewController
            destinationVC.bmiValue = calculatorBrain.getBmiValue()
            destinationVC.advice = calculatorBrain.getBmiAdvice()
            destinationVC.background_color = calculatorBrain.getBmiColor()
        }
    }
}

