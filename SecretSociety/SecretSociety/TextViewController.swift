//
//  TextViewController.swift
//  SecretSociety
//
//  Created by Kyle Reidy on 2/13/19.
//  Copyright © 2019 Blue Room Studios. All rights reserved.
//

import UIKit

class TextViewController: UIViewController {

    @IBOutlet weak var myField: UITextField!
    @IBOutlet weak var flyingHistorian: UIImageView!
    @IBOutlet weak var nextButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.flyingHistorian.frame = CGRect(x: -900, y: 252, width: 225, height: 595)
       // UIView.animate(withDuration: 2, animations: {
       //     self.flyingHistorian.frame = CGRect(x: 16, y: 252, width: 225, height: 595)
       //     })
        // Do any additional setup after loading the view.
    }
    
    override func viewDidAppear(_ animated: Bool) {
        UIView.animate(withDuration: 0.7, animations: {
            self.flyingHistorian.frame = CGRect(x: 16, y: 252, width: 225, height: 595)
        })
    }
    
    override func viewWillAppear(_ animated: Bool) {
        //self.flyingHistorian.frame = CGRect(x: -300, y: 252, width: 1, height: 1)
    }
    
    @IBAction func nextText(){
        myField.text = "Amazing! That letter the Ordo sent you has a clue attached. I wonder what it could mean..."
        nextButton.isHidden = false
    }

}
