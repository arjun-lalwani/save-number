//
//  ViewController.swift
//  What's my number
//
//  Created by Arjun Lalwani on 10/10/16.
//  Copyright © 2016 Arjun Lalwani. All rights reserved.
//
//  currently formatted only for iPHone 6S

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var phoneNumber: UITextField!
    
    @IBOutlet weak var saveLabel: UILabel!
    
    
    @IBAction func saveButton(_ sender: AnyObject) {
        
            // this button saves -> phoneNumber.text is where the users information is stored. 
            // that is what is set to User default
            
            UserDefaults.standard.set(phoneNumber.text, forKey: "number")
            
            saveLabel.isHidden = false
        
            self.phoneNumber.endEditing(true) // removes keyboard when save is clicked
        
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
 
        let numberObjects = UserDefaults.standard.object(forKey: "number")
        
        if let number = numberObjects as? String {
            
            phoneNumber.text = number
            
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

