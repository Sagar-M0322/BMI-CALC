//
//  ViewController.swift
//  BMI Calculator
//
//  Created by Angela Yu on 21/08/2019.
//  Copyright © 2019 Angela Yu. All rights reserved.
//

import UIKit

class CalculateViewController: UIViewController {
    
    var calculatorBrain = CalculatorBrain()
//    var bmiValue = "0.0"

    @IBOutlet weak var heightSlider: UISlider!
    @IBOutlet weak var weightSlider: UISlider!
    @IBOutlet weak var heightValue: UILabel!
    @IBOutlet weak var weightValue: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func hieghtChange(_ sender: UISlider) {
        let height = String(format: "%.2f" , sender.value)
        
        heightValue.text = "\(height)m"
    }
    
    @IBAction func weightChange(_ sender: UISlider) {
        let weight = String(format: "%.0f" , sender.value)
    
        
        weightValue.text = "\(weight)kg"
    }
    
    @IBAction func calculateClicked(_ sender: Any) {
        let height = heightSlider.value
        let weight = weightSlider.value
//        let BMI = String(format: "%.0f", weight) / pow((String(format: "%.0f", weight),2)
//        let BMI = weight / pow(height, 2)
//        bmiValue = String(format: "%.1f", BMI)
        
        
        calculatorBrain.CalculateBMI(height:height,weight:weight)
        self.performSegue(withIdentifier: "goToResult" , sender: self)
        
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "goToResult" {
            let destinationVC = segue.destination as! ResultViewController
            destinationVC.bmivalue = calculatorBrain.getBMIValue()
            destinationVC.advice = calculatorBrain.getAdvice()
            destinationVC.color = calculatorBrain.getColor()        }
            
    }
}

