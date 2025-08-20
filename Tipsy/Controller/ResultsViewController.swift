//
//  ResultsViewController.swift
//  Tipsy
//
//  Created by Bensu Özyurt on 19.08.2025.
//  Copyright © 2025 The App Brewery. All rights reserved.
//

import UIKit

class ResultsViewController: UIViewController {

    @IBOutlet weak var totalLabel: UILabel!
    @IBOutlet weak var settingLabel: UILabel!
    var result : Double = 0.0
    var numPeople : Int?
    var percantage : String?
    
    override func viewDidLoad() {
        totalLabel.text = String(format: "%.2f", result)
        settingLabel.text = "Split between \(numPeople!) people, with \(percantage!) tip."
    }
    
    @IBAction func recalculatePressed(_ sender: UIButton) {
        self.dismiss(animated: true, completion: nil)
    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
