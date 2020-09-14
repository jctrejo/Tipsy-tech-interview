//
//  ResultsViewController.swift
//  Tipsy
//
//  Created by Jose C. Hernandez on 13/09/20.
//  Copyright © 2020 The App Brewery. All rights reserved.
//

import UIKit

class ResultsViewController: UIViewController {
    
    @IBOutlet weak var totalLabel: UILabel!
    @IBOutlet weak var settingsLabel: UILabel!
    
    var resultTotal = ResultTotal()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupUI()
    }
    
    private func setupUI() {
        totalLabel.text = "$\(resultTotal.billTotal)"
        settingsLabel.text = "result.subtitle".localizeWith(arguments: resultTotal.people, "\(resultTotal.percentage)%")
    }
    
    @IBAction func recalculatePressed(_ sender: Any) {
        dismiss(animated: true)
    }
}
