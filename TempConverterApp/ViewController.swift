//
//  ViewController.swift
//  TempConverterApp
//
//  Created by Natalya Buchwald on 9/14/16.
//  Copyright © 2016 Natalya Buchwald. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    let converter = TempConverter()
    
    @IBOutlet weak var inputTemperature: UITextField!
    @IBOutlet weak var inputTempLabel: UILabel!
    @IBOutlet weak var tempLabel: UILabel!
    @IBOutlet weak var temperature: UILabel!
    @IBOutlet weak var convert: UIButton!
    @IBOutlet weak var toggleSwitch: UISwitch!

    override func viewDidLoad() {
        super.viewDidLoad()
        temperature.text = "--"
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    
    @IBAction func updateLabels(){
        let userData:String = inputTemperature.text!

        if (userData == "") {
            converter.inputTemp = -500
        }
        if (Int(userData) < -270) {
            temperature.text = "NA"
            
        }
        else {
            
            temperature.text = String(converter.convertedTemp)
            inputTempLabel.text = converter.tempUnits
            tempLabel.text = converter.newUnits
            
        }
        
        
    
        
       
    }
    
    @IBAction func converts() {
        let userData:String = inputTemperature.text!
        if converter.tempIsValid() {
            
            if converter.tempUnits == "°F" {
                
                converter.convertedTemp = Int(5.0 / 9.0 * (Double(Int(userData)!) - 32.0))
                print("temp is F")
                print("userdata:",Int(userData))
                print("convertedTemp:",converter.convertedTemp )
                
                
                
                
            } else {
                converter.convertedTemp = Int(9.0 * (Double(Int(userData)!) / 5.0) + 32.0)
                print("temp is C")
                print("userdata:",Int(userData))
                print("convertedTemp:",converter.convertedTemp )
                
            }
        }
        else {
            temperature.text = "INVALID"
        }
        updateLabels()
        
    }
    
    @IBAction func updateDisplay(){
        //tbd
    }
    @IBAction func switchChanged() {
        
        
        converter.toggleUnits()
        updateLabels()
        temperature.text = "--"
       // inputTemperature.text = ""
    }

}

