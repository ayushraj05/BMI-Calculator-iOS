//
//  ResultViewController.swift
//  BMI Calculator
//
//  Created by Ayush Rajpal on 21/05/24.
//

import UIKit

class ResultViewController: UIViewController {

    @IBOutlet weak var BMI_lable: UILabel!
    @IBOutlet weak var Advice_lable: UILabel!
    
    var bmiValue : String?
    var advice : String?
    var color: UIColor?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        BMI_lable.text = bmiValue
        Advice_lable.text = advice
        view.backgroundColor = color
        // Do any additional setup after loading the view.
    }
    
    //gettign back to the orignal page
    @IBAction func RecalculateGotPressed(_ sender: UIButton) {
        self.dismiss(animated: true)
    }

}
