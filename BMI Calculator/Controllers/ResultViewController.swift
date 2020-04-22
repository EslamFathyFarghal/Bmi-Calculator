//
//  ResultViewController.swift
//  BMI Calculator
//
//  Created by Eslam Fathy on 4/22/20.
//  Copyright © 2020 Angela Yu. All rights reserved.
//

import UIKit

class ResultViewController: UIViewController {

    var bmiValue: String?
    var advice: String?
    var color: UIColor?
    
    @IBOutlet weak var scoreLabel: UILabel!
    
 
    @IBOutlet weak var adviceLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

      scoreLabel.text = bmiValue
      adviceLabel.text = advice
      view.backgroundColor = color
    }

    @IBAction func recalculatePressed(_ sender: UIButton) {
        dismiss(animated: true, completion: nil)
    }
    
}
