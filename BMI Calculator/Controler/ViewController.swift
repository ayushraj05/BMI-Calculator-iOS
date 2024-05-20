//
//  ViewController.swift
//  BMI Calculator
//
//  Created by Ayush Rajpal on 20/05/24.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var height_value: UILabel!
    @IBOutlet weak var weight_value: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func height_slider(_ sender: UISlider) {
        height_value.text = "\(String(format: "%.2f", sender.value)) m"
    }
    
    @IBAction func weight_slider(_ sender: UISlider) {
        weight_value.text = "\(Int(sender.value)) Kg"
    }
    
}

