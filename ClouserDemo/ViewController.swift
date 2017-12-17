//
//  ViewController.swift
//  ClouserDemo
//
//  Created by Pratik Lad on 17/12/17.
//  Copyright © 2017 Pratik Lad. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var labelTextChange: UILabel!
    
    //This is clouser
    var clouseName = { () -> () in }
    //and we can create another variable for storing text and calling clouser
    //using didSet method to call clouser
    var value : String?{
        didSet{
            clouseName()
        }
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
    
        //now hear we declare clouse body and use them
        clouseName = { [weak self] in
            //set lable text using value
            
            self?.labelTextChange.text = self?.value
        }
        
    }

    @IBAction func textEditingChanged(_ sender: UITextField) {
        //This is textfield text changed action
        //now first we create clouser
    
        //and hear we set textfield value in value variable 
        value = sender.text
    }
    

}

