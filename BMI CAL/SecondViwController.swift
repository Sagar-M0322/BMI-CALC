//
//  SecondViwController.swift
//  BMI Calculator
//
//  Created by sagar on 09/07/21.
//  Copyright © 2021 Angela Yu. All rights reserved.
//

import Foundation
import UIKit

class SecondViwController: UIViewController{
    
    var bmiVal = "0.0"
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .red
        
        let label  = UILabel()
        label.text = bmiVal
        label.frame = CGRect(x: 0, y: 0, width: 100, height: 50)
        view.addSubview(label)
    }
}
