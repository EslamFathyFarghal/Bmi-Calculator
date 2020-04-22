//
//  ViewController.swift
//  BMI Calculator
//
//  Created by Angela Yu on 21/08/2019.
//  Copyright © 2019 Angela Yu. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var brain = BmiCalculator()
    @IBOutlet weak var wValue: UILabel!
    @IBOutlet weak var hValue: UILabel!
   
    @IBOutlet weak var hSlider: UISlider!
    @IBOutlet weak var wSlider: UISlider!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }

    @IBAction func heightSliderChanged(_ sender: UISlider) {
        hValue.text = String(format: "%.2f \("m")",  hSlider.value )
    }
    
    @IBAction func calculatePressed(_ sender: UIButton) {
        let height = hSlider.value
        let weight = wSlider.value

        brain.calculateBMI(height: height, weight: weight)
        performSegue(withIdentifier: "goToResult", sender: self)
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "goToResult" {
            let destinationVC = segue.destination as! ResultViewController
            destinationVC.bmiValue = brain.getBMIValue()
            destinationVC.advice = brain.getAdvice()
            destinationVC.color = brain.getColor()
        }
    }
    @IBAction func weightSliderChanged(_ sender: UISlider) {
        wValue.text = String(format: "%.2f \("kg")",  wSlider.value )
    }
}

