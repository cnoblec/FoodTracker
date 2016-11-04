//
//  ViewController.swift
//  FoodTracker
//
//  Created by Carlos Noble Curveira on 2016-10-25.
//  Copyright © 2016 Carlos Noble Curveira. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {

    // MARK: Properties
    @IBOutlet weak var nameTextField: UITextField!
    @IBOutlet weak var nameMealLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Handle the text field’s user input through delegate callbacks.
        nameTextField.delegate = self
    }
    // MARK: UITextFieldDelegate
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        // hide the keyboard
        textField.resignFirstResponder()
        return true
    }
    func textFieldDidEndEditing(_ textField: UITextField) {
        nameMealLabel.text = textField.text
    }
    // MARK: Actions
    @IBAction func setDefaultLabelText(_ sender: UIButton) {
        nameMealLabel.text = "Default Text"
    }
}

