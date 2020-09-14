//
//  CalculatorViewController.swift
//  Tipsy
//
//  Created by Angela Yu on 09/09/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import UIKit

class CalculatorViewController: BaseViewController {
    
    @IBOutlet weak var billTextField: UITextField!
    @IBOutlet weak var zeroPctButton: UIButton!
    @IBOutlet weak var tenPctButton: UIButton!
    @IBOutlet weak var twentyPctButton: UIButton!
    @IBOutlet weak var splitNumberLabel: UILabel!
    @IBOutlet weak var calculate: UIButton!
    
    private var percentage = Double()
    private var billTotal = Double()
    private var people = Int()
    private var resultTotal = String()
    
    private func verifyDataToContinue() {
        if !isBillTotalValid() || !isPlitNumberVarlid() {
            return
        }
        
        let tip = percentageCalculation(value: billTotal, percentageVal: percentage)
        let tipOperation = tip + billTotal
        let divisionBetweenPeople = tipOperation / Double(people)
        let resultTotal = String(format: "%.2f", divisionBetweenPeople)
        self.resultTotal = resultTotal
    }
    
    private func isBillTotalValid() -> Bool {
        if let newBillTextField = billTextField.text, !newBillTextField.isEmpty {
            billTotal = Double(newBillTextField) ?? 0.0
            return true
        } else {
            showPlainAlertError(message: "result.error.alert".localized)
            return false
        }
    }
    
    private func isPlitNumberVarlid() -> Bool {
        if let newPlitNumber = splitNumberLabel.text, Int(newPlitNumber) != 0 {
            people = Int(newPlitNumber) ?? 0
            return true
        } else {
            showPlainAlertError(message: "result.error.person".localized)
            return false
        }
    }
    
    private func setupButton(sender: UIButton) {
        billTextField.endEditing(true)
        
        switch sender {
        case zeroPctButton:
            zeroPctButton.isSelected = true
            tenPctButton.isSelected = false
            twentyPctButton.isSelected = false
            percentage = Constants.Dummy.zeroPercent
        case tenPctButton:
            tenPctButton.isSelected = true
            zeroPctButton.isSelected = false
            twentyPctButton.isSelected = false
            percentage = Constants.Dummy.tenPercent
        case twentyPctButton:
            twentyPctButton.isSelected = true
            zeroPctButton.isSelected = false
            tenPctButton.isSelected = false
            percentage = Constants.Dummy.twentyPercent
        default:
            break
        }
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == Constants.StoryboardIdentifier.showResultsIdentifier {
            if let viewController: ResultsViewController = segue.destination as? ResultsViewController {
                let result = ResultTotal(billTotal: resultTotal, percentage: Int(percentage), people: String(people))
                viewController.resultTotal = result
            }
        }
    }
    
    private func percentageCalculation(value: Double, percentageVal: Double) -> Double {
        let val = value * percentageVal
        return val / Constants.Double.divider
    }
    
    @IBAction func tipChanged(_ sender: UIButton) {
        setupButton(sender: sender)
    }
    
    @IBAction func stepperValueChanged(_ sender: UIStepper) {
        splitNumberLabel.text = Int(sender.value).description
        people = Int(sender.value)
    }
    
    @IBAction func calculatePressed(_ sender: UIButton) {
        verifyDataToContinue()
    }
}
