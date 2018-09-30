//
//  ViewController.swift
//  ColorGenerator
//
//  Created by Zhong, Zhetao on 9/28/18.
//  Copyright © 2018 Zhong, Zhetao. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {
    
    let model = ColorGenerator()
    
    // initialization
    @IBOutlet weak var redLabel: UILabel!
    @IBOutlet weak var greenLabel: UILabel!
    @IBOutlet weak var blueLabel: UILabel!
    @IBOutlet weak var redInput: UITextField!
    @IBOutlet weak var greenInput: UITextField!
    @IBOutlet weak var blueInput: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        redInput.keyboardType = .numberPad
        greenInput.keyboardType = .numberPad
        blueInput.keyboardType = .numberPad
    }


    // when button is clickedd
    @IBAction func Generate(_ sender: UIButton) {
        
        if let red = redInput.text, let green = greenInput.text, let blue = blueInput.text{
                view.backgroundColor = model.generate(red: red, green: green, blue: blue)
        }else{
            return view.backgroundColor = UIColor.gray
        }
    }
    
    
    
    // Gesture: tapped.
    // Make the background white and hide the keyboard
    @IBAction func onTap(_ sender: UITapGestureRecognizer) {
        view.endEditing(true)
        view.backgroundColor = UIColor.white
    }

    
    
    // MARK: - UITextFieldDelegate
    func textField(_ textField: UITextField, shouldChangeCharactersIn range: NSRange, replacementString string: String) -> Bool {
        
        if let current = textField.text {
            
            // backspace
            if string.count == 0 {
                return true
            } else {
                return model.isValidInput(inputString: string, characterCount: current.count)
            }
        } else {
            return false
        }
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

