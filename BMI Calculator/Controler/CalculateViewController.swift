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
    
    var bmi_logic = BMI_logic()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    // chnaging the value of the text label from the height slider
    @IBAction func height_slider(_ sender: UISlider) {
        height_value.text = "\(String(format: "%.2f", sender.value)) m"
    }
    //changing the value of the text label from the weight slider
    @IBAction func weight_slider(_ sender: UISlider) {
        weight_value.text = "\(Int(sender.value)) Kg"
    }
    
    // caluculating the bmi using the BMI_logic file
    @IBAction func calcuate_bmi(_ sender: Any) {
        bmi_logic.calculateBMI(height: height_slider_value.value, weight: weight_slider_value.value)
        self.performSegue(withIdentifier: "goToResult", sender: self)//sending the user to the resultviewcontroler page
    }
    
    //preparing the result page before display
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "goToResult"{
            let destinationVC = segue.destination as! ResultViewController
            destinationVC.bmiValue = bmi_logic.getBMIvalue()
            destinationVC.advice = bmi_logic.getAdvice()
            destinationVC.color = bmi_logic.getColor()
        }
    }
    
}

