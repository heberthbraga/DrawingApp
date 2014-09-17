//
//  ViewController.swift
//  DrawingApp
//
//  Created by Heberth Braga on 9/15/14.
//  Copyright (c) 2014 Heberth Braga. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var messageLabel: UILabel!
    
    @IBOutlet weak var nameTextField: UITextField!
    
    @IBOutlet weak var messageTextField: UITextField!
    
    @IBOutlet weak var mailBtn: UIButton!
    
    @IBOutlet weak var nameLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func sendMailBtn(sender: UIButton) {
        
        messageLabel.hidden = false
        messageLabel.text = messageTextField.text
        messageLabel.textColor = UIColor.redColor()
        
        messageTextField.text = ""
        messageTextField.resignFirstResponder()
        
        mailBtn.setTitle("Mail Sent", forState: UIControlState.Normal)
        
        nameLabel.hidden = false
        nameLabel.text = nameTextField.text
        nameLabel.textColor = UIColor.blueColor()
        
        nameTextField.text = ""
    }
}