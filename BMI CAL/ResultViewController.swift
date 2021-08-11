//
//  ResultViewController.swift
//  BMI Calculator
//
//  Created by sagar on 09/07/21.
//  Copyright © 2021 Angela Yu. All rights reserved.
//

import UIKit

class ResultViewController: UIViewController {

    var bmivalue : String?
    var advice: String?
    var color: UIColor?
    
    @IBOutlet weak var bmiLable: UILabel!
    @IBOutlet weak var adviceLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        bmiLable.text = bmivalue as! String
        adviceLabel.text = advice
        view.backgroundColor = color
       
    }
    @IBAction func recalculatePresses(_ sender: UIButton) {
        self.dismiss(animated: true, completion: nil)
    }
    
    
}

    
