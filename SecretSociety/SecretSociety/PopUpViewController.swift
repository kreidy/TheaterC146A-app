//
//  PopUpViewController.swift
//  SecretSociety
//
//  Created by Kyle Reidy on 2/19/19.
//  Copyright © 2019 Blue Room Studios. All rights reserved.
//

import UIKit

class PopUpViewController: UIViewController {

    @IBOutlet weak var topLabel: UILabel!
    @IBOutlet weak var yearField: UITextField!
    var correctSol: String = "1941"
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func submit(_ sender: Any) {
        if yearField.text == correctSol {
            topLabel.text = "Correct!"
        } else {
            topLabel.text = "Try again!"
            yearField.text = ""
        }
    }
    
    @IBAction func close(_ sender: Any) {
        dismiss(animated: true, completion: nil)
    }
    
}
