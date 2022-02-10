//
//  ViewController.swift
//  CourseApp
//
//  Created by Ajay Bandi on 2/9/22.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var imageDisplay: UIImageView!
    
    @IBOutlet weak var crsNum: UILabel!
    
    @IBOutlet weak var crsTitle: UILabel!
    
    
    @IBOutlet weak var crsSem: UILabel!
    
    @IBOutlet weak var previousButton: UIButton!
    
    @IBOutlet weak var nextButton: UIButton!
    
    let courses = [["img01", "44555", "NetworkSecurity", "Fall 2022"], ["img02", "44643", "iOS", "Spring 2022"],
    ["img03", "44656", "Streaming Data", "Summer 2022"]]
    
    var imageNumber = 0;
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        //Loads the first course details (image, crsNum, title, and Sem)
        updateUI(0)
        //previous button is disabled
        previousButton.isEnabled = false;
        
    }

    @IBAction func previousButtonClicked(_ sender: Any) {
        //Next button should be enabled
        nextButton.isEnabled = true
        
        //update UI
        imageNumber -= 1
        updateUI(imageNumber)
        
        //if the course position is at the 0th position, previous button should be disabled
        if(imageNumber == 0){
            previousButton.isEnabled = false
        }
        
        
    }
    
    
    @IBAction func nextButtonClicked(_ sender: Any) {
        //UI should be updated with the next course details
        imageNumber += 1
        updateUI(imageNumber)
        //previous button should be enabled
        previousButton.isEnabled = true
        //when we reach the end of the array that means all the images are shown, th next button should be disabled.
        if(imageNumber == courses.count-1){
            nextButton.isEnabled = false
        }
        
    }
    
    func updateUI(_ imageNumber:Int){
        imageDisplay.image = UIImage(named: courses[imageNumber][0])
        crsNum.text = courses[imageNumber][1]
        crsTitle.text = courses[imageNumber][2]
        crsSem.text = courses[imageNumber][3]
    }
    
}

