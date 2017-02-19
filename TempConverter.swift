//
//  TempConverter.swift
//  TempConverterApp
//
//  Created by Natalya Buchwald on 9/14/16.
//  Copyright © 2016 Natalya Buchwald. All rights reserved.
//

import Foundation

class TempConverter {
    
    var inputTemp: Int = 0
    var convertedTemp: Int = 0
    var convertedTempDisplay: String = "0"
    var tempUnits: String = "°F"
    var newUnits: String = "°C"
    



    
    func tempIsValid() -> Bool {
        
        // test to make sure above absolute zero for either Fahrenheit or Celsius
        
        if (inputTemp < -454 && tempUnits == "°F") || (inputTemp < -270 && tempUnits == "°C") {
            

            return false
        }
        else {
            return true
        }
    }


    
    func toggleUnits() {
        if tempUnits == "°F" {
            newUnits = "°F"
            tempUnits = "°C"
        }
        else {
            tempUnits = "°F"
            newUnits = "°C"

        }
        
        
    
            }
    
    }

