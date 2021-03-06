//
//  ViewController.swift
//  Cat Years
//
//  Created by Jeffrey Limauro on 8/16/15.
//  Copyright (c) 2015 LimauroDev. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var HumanYears: UITextField!
    
    @IBOutlet weak var DisplayAnsLbl: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func GetAge(_ sender: AnyObject) {
        HumanYears.resignFirstResponder()
        print("Button Clicked")
        
      let enteredAge = HumanYears.text
        
        if enteredAge != nil {
            let catYears = Int(enteredAge!)! * 7
            DisplayAnsLbl.text = "Your cat is \(catYears)"
        }
        else
        {
            DisplayAnsLbl.text = "Please enter an age!"
        }
    }
    

}

