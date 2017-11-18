//
//  ViewController.swift
//  Tipper
//
//  Created by Susan Lei on 11/17/17.
//  Copyright © 2017 Susan Lei. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var tipLabel: UILabel!
    @IBOutlet weak var totalLabel: UILabel!
    @IBOutlet weak var billField: UITextField!
    @IBOutlet weak var tipControl: UISegmentedControl!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func onTap(sender: AnyObject) {
        view.endEditing(true) //dismiss the keyboard
    }

    @IBAction func calculateTip(sender: AnyObject) {
        let tipPercentages = [0.15, 0.18, 0.20]
        
        let bill = Double(billField.text!) ?? 0
        let tip = bill * tipPercentages[tipControl.selectedSegmentIndex]
        let total = bill + tip
        
        //changes whatever the value in tip is by using $\(tip)
        tipLabel.text = String(format: "$%.2f", tip)
        totalLabel.text = String(format: "$%.22f", total)
    }
    
    
}

