//
//  ViewController.swift
//  VowelTester
//
//  Created by Ajay Bandi on 1/25/22.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var textOutlet: UITextField!
    
    @IBOutlet weak var displayLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func buttonClicked(_ sender: UIButton) {
        //read the text
        var enteredtext = textOutlet.text!
        //check for a vowel
        if (enteredtext.contains("a") || enteredtext.contains("e")){
            //display on the label
            displayLabel.text = "The enterd text contains vowel"
        }
        else{
            displayLabel.text = "The enterd text does not have vowel"
        }
    }
    
}

