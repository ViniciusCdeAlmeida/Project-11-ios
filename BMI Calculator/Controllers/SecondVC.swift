//
//  SecondVC.swift
//  BMI Calculator
//
//  Created by Apple Multiplier on 21/11/23.
//  Copyright © 2023 Angela Yu. All rights reserved.
//

import UIKit

class SecondVC: UIViewController {
    var bmi = "0"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .orange
        
        let label = UILabel()
        label.text = bmi
        label.frame = CGRect(x: 100, y: 100, width: 100, height: 50)
        
        view.addSubview(label)
        
    }
}
