//
//  ColorGenerator.swift
//  ColorGenerator
//
//  Created by Zhong, Zhetao on 9/28/18.
//  Copyright © 2018 Zhong, Zhetao. All rights reserved.
//

import Foundation
import UIKit

class ColorGenerator {
    
    
    // initial background colour
    var background = UIColor.white
    
    
    init() {
    }
    
    // make the input from string to float
    func stringToFloat(str: String) -> (CGFloat) {

        let string = str
        var float = CGFloat()
        
        if let double = Double(string)
        {
            float = CGFloat(double)
        }
        return float
        
    }
    
    
    // generate a new colour based on the input
    func generate (red: String, green: String, blue: String) -> UIColor {
        
        return UIColor(red: (stringToFloat(str: red)) / 256, green: stringToFloat(str: green) / 256, blue: stringToFloat(str: blue) / 256, alpha: 1.0)
        
    }
    
    
    
    // check if the input is valid (max 3 digit)
    func isValidInput(inputString: String, characterCount: Int) -> Bool {
        
        if characterCount > 2 {
            return false
        } else {
            let float = stringToFloat(str: inputString)
            
            if float < 0 {
                return false
            } else if float > 256 {
                return false
            }
            return true
        }
        

    }
    
}
