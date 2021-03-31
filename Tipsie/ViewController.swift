//
//  ViewController.swift
//  Tipsie
//
//  Created by aashray Shrestha on 3/31/21.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var billAmount: UITextField!
    @IBOutlet weak var tipAmount: UILabel!
    @IBOutlet weak var tipSegments: UISegmentedControl!
    @IBOutlet weak var total: UILabel!
    
    @IBOutlet weak var numberOfPeople: UITextField!
    @IBOutlet weak var splitTotal: UILabel!
    
    var totalBill = 0.0;
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func tipControl(_ sender: Any) {

        let bill = Double(billAmount .text!) ?? 0
        let tipPercent = [0.15 , 0.18 , 0.20]
        let tip = bill * tipPercent[tipSegments.selectedSegmentIndex]
        
        let totalAmount = bill + tip
        
        tipAmount.text = String(format:"$%.2f", tip)
        total.text = String(format:"$%.2f", totalAmount)
        
        totalBill = totalAmount
        
    }
    
    @IBAction func onSplit(_ sender: Any) {
        
        let number = Double(numberOfPeople .text!) ?? 1
        let splitAmount = totalBill / number
        
        splitTotal.text = String(format:"$%.2f", splitAmount)
    }
}

