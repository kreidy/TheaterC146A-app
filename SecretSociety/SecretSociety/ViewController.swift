//
//  ViewController.swift
//  SecretSociety
//
//  Created by Kyle Reidy on 2/8/19.
//  Copyright © 2019 Blue Room Studios. All rights reserved.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {

    var player = AVAudioPlayer()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let sound = Bundle.main.path(forResource: "rip", ofType: "wav")
        
        do {
            player = try AVAudioPlayer(contentsOf: URL(fileURLWithPath: sound!))
        } catch {
            print(error)
        }
    }
    
    @IBAction func play() {
        player.stop()
        player.currentTime = 0
        player.play()
    }
}

