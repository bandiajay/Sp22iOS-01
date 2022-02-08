//
//  ViewController.swift
//  OddorEven
//
//  Created by Ajay Bandi on 2/8/22.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var inputOutlet: UITextField!
    
    
    @IBOutlet weak var displayLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


    @IBAction func SubmitButtonClicked(_ sender: Any) {
        let input = Int (inputOutlet.text!)
        if(input!%2 == 0){
            displayLabel.text = "\(input!) is even number"
        }
        else{
            displayLabel.text = "\(input!) is odd number"
        }
        
    }
}

