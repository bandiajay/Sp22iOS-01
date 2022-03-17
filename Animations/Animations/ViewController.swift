//
//  ViewController.swift
//  Animations
//
//  Created by student on 3/16/22.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var sadOutlet: UIButton!
    @IBOutlet weak var imageOutlet: UIImageView!
    
    @IBOutlet weak var happyOutlet: UIButton!
    
    @IBOutlet weak var angryOutlet: UIButton!
    
    
    @IBOutlet weak var shakeMeOutlet: UIButton!
    
    
    @IBOutlet weak var showOutlet: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        //Moving the image outside of the view.
        imageOutlet.frame.origin.x = view.frame.maxX;
        
        
    }
    
    override func viewDidAppear(_ animated: Bool) {
        //Moving the image outside of the view.
        imageOutlet.frame.origin.x = view.frame.maxX;
        
        //similarly, do it for all the objects.
        //we do move only in horizontal direction.
        happyOutlet.frame.origin.x = view.frame.width
        
        sadOutlet.frame.origin.x = view.frame.width
        
        angryOutlet.frame.origin.x = view.frame.width
        
        shakeMeOutlet.frame.origin.x = view.frame.width
        
    }
    
    

    @IBAction func happyButtonClicked(_ sender: UIButton) {
        animateImage("happy")
    }
    
    @IBAction func sadButtonClicked(_ sender: UIButton) {
        animateImage("sad")
    }
    
    @IBAction func angryButtonClicked(_ sender: UIButton) {
        animateImage("angry")
    }
    
    @IBAction func shakeMeButtonClicked(_ sender: UIButton) {
        
        var w =  imageOutlet.frame.width
                w += 40
                var h = imageOutlet.frame.height
                h += 40
                
               var x =  imageOutlet.frame.origin.x-20
                
                var y = imageOutlet.frame.origin.y-20
                
                var largerFrame = CGRect(x: x, y: y, width: w, height: h)
                
                UIView.animate(withDuration: 1, delay: 0, usingSpringWithDamping: 0.4, initialSpringVelocity: 50, animations: {
                    self.imageOutlet.frame = largerFrame
                })
        
    }
    
    @IBAction func showButtonClicked(_ sender: UIButton) {
        
        UIView.animate(withDuration: 1,  animations: {
        //Moving all the components to the center of the screen (view)
            self.imageOutlet.center.x = self.view.center.x;
        
            self.happyOutlet.center.x = self.view.center.x;
        
            self.sadOutlet.center.x = self.view.center.x;
        
            self.angryOutlet.center.x = self.view.center.x;
        
            self.shakeMeOutlet.center.x = self.view.center.x
        
            self.showOutlet.isEnabled = false;
        
        })
        
    }
    
    func animateImage(_ imageName: String){
        
        //Making the current image opaque. aplha is 0.
        
        UIView.animate(withDuration: 1, animations:{
            self.imageOutlet.alpha = 0;
    
        } )
        
        
        //Assigning the current image with animation. with alpha is 1
        
        UIView.animate(withDuration: 1,delay: 0.2, animations:{
            
            self.imageOutlet.alpha = 1;
        self.imageOutlet.image = UIImage(named: imageName)
    
        } )
        
    }
    
}

