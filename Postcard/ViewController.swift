//
//  ViewController.swift
//  Postcard
//
//  Created by Daniel Yengle on 9/12/14.
//  Copyright (c) 2014 Daniel Yengle. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var messageLabel: UILabel!
    
    @IBOutlet weak var enterNameTextField: UITextField!
    
    @IBOutlet weak var enterMessageTextField: UITextField!
    
    @IBOutlet weak var mailButton: UIButton!

    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    
    @IBAction func sendMailButtonPressed(sender: UIButton) {
        // Code will evaluate when the we press the button.
        
        messageLabel.hidden = false
        messageLabel.text = enterMessageTextField.text
        
        enterMessageTextField.text = ""
        enterMessageTextField.resignFirstResponder()
        //We want the keyboard to dissapear.
        
        messageLabel.textColor = UIColor.redColor()
        // Simple. Changes text of Label.
        
        mailButton.setTitle("Mail Sent", forState: UIControlState.Normal)
        // Changes text of button after pressed. First you must link button to ViewController as Outlet!
        
        

    
    }

    
    
    
}

