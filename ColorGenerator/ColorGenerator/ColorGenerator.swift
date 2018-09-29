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
    
    
    
    var background = UIColor.white
    
    init() {
    }
    
    func stringToInt(str: String) -> (CGFloat) {

        let string = str
        var float = CGFloat()
        
        if let double = Double(string)
        {
            float = CGFloat(double)
        }
        
        return float
        
    }
    
    
    
    func generate (red: String, green: String, blue: String) -> UIColor {
        
        return UIColor(red: (stringToInt(str: red)) / 256, green: stringToInt(str: green) / 256, blue: stringToInt(str: blue) / 256, alpha: 1.0)
        
    }
    
    
    
    
    func isValidInput(inputString: String, characterCount: Int) -> Bool {
        
        let int = stringToInt(str: inputString)

        if (int >= 0 && int <= 256){
            return true
        }
        return false
    }
    
}
