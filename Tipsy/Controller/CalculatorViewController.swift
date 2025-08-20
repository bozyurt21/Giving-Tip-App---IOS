//
//  ViewController.swift
//  Tipsy
//
//  Created by Angela Yu on 09/09/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import UIKit

class CalculatorViewController: UIViewController {

    @IBOutlet weak var billTextField: UITextField!
    
    @IBOutlet weak var zeroButton: UIButton!
    @IBOutlet weak var tenButton: UIButton!
    @IBOutlet weak var twentyButton: UIButton!
    
    @IBOutlet weak var splitNumberLabel: UILabel!
    
    var numPeople : Int?
    var buttonPercentage : Double = 0.0
    var res : Double = 0.0
    var buttonTitle : String?

    @IBAction func tipChanged(_ sender: UIButton) {
        zeroButton.isSelected = false
        tenButton.isSelected = false
        twentyButton.isSelected = false
        
        sender.isSelected = true
        
        buttonTitle = sender.currentTitle
        buttonPercentage = Double(String(buttonTitle?.dropLast() ?? "0"))! / 100
    }
    
    @IBAction func splitChanged(_ sender: UIStepper) {
        splitNumberLabel.text = String(format: "%.0f", sender.value)
        numPeople = Int(sender.value)
        
    }
    
    @IBAction func calculatePressed(_ sender: UIButton) {
        var totalBill = Double(billTextField.text ?? "0.0") ?? 0.0
        totalBill += totalBill*buttonPercentage
        res = totalBill / Double(numPeople ?? 1)
        self.performSegue(withIdentifier: "getTheResult", sender: self)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "getTheResult" {
            let des = segue.destination as! ResultsViewController
            des.result = res
            des.numPeople = numPeople
            des.percantage = buttonTitle
        }
    }
    
    
}

