//
//  ViewController.swift
//  DiscountApp
//
//  Created by Ajay Bandi on 2/14/22.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var discount: UITextField!
    @IBOutlet weak var amount: UITextField!
    
    @IBOutlet weak var displayLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func submitButtonClicked(_ sender: Any) {
        var enteredAmount = Double (amount.text!)
        var enteredDiscount = Double (discount.text!)
        
        var priceAfterDiscount =        enteredAmount! * (1-enteredDiscount! / 100)
        
        displayLabel.text = "Price after discount is: \(priceAfterDiscount)"
        
    }
    
}

