//
//  ViewController.swift
//  BMI Calculator
//
//  Created by Ayush Rajpal on 20/05/24.
//

import UIKit

class CalculateViewController: UIViewController {
    
    @IBOutlet weak var height_value: UILabel!
    @IBOutlet weak var weight_value: UILabel!
    @IBOutlet weak var weight_slider_value: UISlider!
    @IBOutlet weak var height_slider_value: UISlider!
    
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
    
    @IBAction func calcuate_bmi(_ sender: Any) {
        let bmi = weight_slider_value.value / pow(height_slider_value.value,2)
        
        let view2 = ViewController2()
        view2.bmi_value = "\(String(format: "%.2f", bmi))"
        
        self.present(view2, animated: true, completion: nil)
    }

    
}

