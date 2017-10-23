//
//  ViewController.swift
//  prefrencedefaults
//
//  Created by Terry McCart on 10/23/17.
//  Copyright © 2017 Terry McCart. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    let textFieldKeyConstant = "textFieldKeyName"
    let switchKeyConstant = "switchKeyName"
    
    @IBOutlet weak var myTextField: UITextField!
    @IBOutlet weak var mySwitch: UISwitch!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        let defaults = UserDefaults.standard
        if let textFieldvalue = defaults.string(forKey: textFieldKeyConstant){
            myTextField.text = textFieldvalue
            
        }
    
    
    if (defaults.bool(forKey:switchKeyConstant)){mySwitch.isOn = true} else {mySwitch.isOn = false}
}

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
@IBAction func myButton(_sender: UIButton){
let defaults = UserDefaults.standard
defaults.setValue(myTextField.text, forKey: textFieldKeyConstant)
defaults.set(mySwitch.isOn, forKey: switchKeyConstant)
}
}


