//
//  ViewController.swift
//  HelloApp
//
//  Created by Ajay Bandi on 1/20/22.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var textOutlet: UITextField!
    
    @IBOutlet weak var displayLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


    @IBAction func ButttonClicked(_ sender: UIButton) {
        //Read the text from the text field
        var enteredName = textOutlet.text!
        //Change the display label to Hello, name!
        displayLabel.text = "Hello, \(enteredName)!"
    }
    
}

