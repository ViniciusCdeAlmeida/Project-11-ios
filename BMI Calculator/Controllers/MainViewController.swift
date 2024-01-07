//
//  ViewController.swift
//  BMI Calculator
//
//  Created by Angela Yu on 21/08/2019.
//  Copyright © 2019 Angela Yu. All rights reserved.
//

import UIKit

class MainViewController: UIViewController {
    var bmiValue : String?
    
    var calculatorBrain = CalculatorBrain()
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    @IBOutlet weak var heightLabel: UILabel!
    @IBOutlet weak var weightLabel: UILabel!
    @IBOutlet weak var heightSliderBtn: UISlider!
    @IBOutlet weak var weightSliderBtn: UISlider!
    
    @IBAction func heightSlider(_ sender: UISlider) {
        let height  =
         String(format: "%.2f", sender.value)
        heightLabel.text = "\(height)m"
    }
    
    @IBAction func weightSlider(_ sender: UISlider) {
        let weight = String(format: "%.0f", sender.value)
        weightLabel.text = "\(weight)kg"
    }
    @IBAction func calculatePressed(_ sender: Any) {
        let height = heightSliderBtn.value
        let weight = weightSliderBtn.value 
        
        calculatorBrain.calculateBMI(height:height,weight:weight)
        
        self.performSegue(withIdentifier: "goToResult", sender:self)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "goToResult"{
            let destination = segue.destination as! ResultViewController
            destination.bmiResult = calculatorBrain.getBMIValue()
            destination.bmiAdvice = calculatorBrain.getAdvice()
            destination.bmiColor = calculatorBrain.getColor()
        }
    }
}

