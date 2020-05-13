//
//  ViewController.swift
//  Simple Xylophone
//
//  Created by Demario Douce on 2020-05-12.
//  Copyright © 2020 Demario Douce. All rights reserved.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {

    var player: AVAudioPlayer!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


    @IBAction func buttonPressed(_ sender: UIButton) {
        //Reduces the sender's (the button that got pressed) opacity to half.
         sender.alpha = 0.5

         //Code should execute after 0.2 second delay.
         DispatchQueue.main.asyncAfter(deadline: .now() + 0.2) {
             //Bring's sender's opacity back up to fully opaque.
         sender.alpha = 1.0
         }
             
         let letterPressed = sender.currentTitle
         playSound(Pressed: letterPressed!)
    }
    
    func playSound(Pressed:String?) {
        
    
        
            let url = Bundle.main.url(forResource: Pressed , withExtension: "wav")
            player = try! AVAudioPlayer(contentsOf: url!)
            player.play()
            
            

        
    }
}

