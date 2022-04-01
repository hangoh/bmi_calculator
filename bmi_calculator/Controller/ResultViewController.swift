//
//  ResultViewController.swift
//  bmi_calculator
//
//  Created by Goh Yuhan on 2022/03/31.
//

import UIKit

class ResultViewController: UIViewController {

    var bmiValue:String?
    var advice:String?
    var background_color:UIColor?
    
    @IBOutlet weak var resultLabel: UILabel!
    @IBOutlet weak var adviceLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        resultLabel.text = bmiValue
        adviceLabel.text = advice
        view.backgroundColor = background_color
        // Do any additional setup after loading the view.
    }
    
    @IBAction func recalculateButton(_ sender: UIButton) {
        self.dismiss(animated: true, completion: nil)
    }
    
}
