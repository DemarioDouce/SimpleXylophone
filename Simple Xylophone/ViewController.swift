//
//  ViewController.swift
//  Simple Xylophone
//
//  Created by Demario Douce on 2020-05-12.
//  Copyright © 2020 Demario Douce. All rights reserved.
//

import UIKit

//To let sound work
import AVFoundation

class ViewController: UIViewController {

    //Variable for AVAudioPlayer
    var player: AVAudioPlayer!
    
    //Run on first load of app
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


    //Button function
    @IBAction func buttonPressed(_ sender: UIButton) {
        //Reduces the sender's (the button that got pressed) opacity to half.
         sender.alpha = 0.5

         //Code should execute after 0.2 second delay.
         DispatchQueue.main.asyncAfter(deadline: .now() + 0.2) {
             //Bring's sender's opacity back up to fully opaque.
         sender.alpha = 1.0
         }
          
        //Assigning the title of the button to letterPressed
         let letterPressed = sender.currentTitle
        
        //Passing it to the playSound function as the tracks are name according to the button
         playSound(Pressed: letterPressed!)
    }
    
    //Play sound function
    func playSound(Pressed:String?) {
            
        //Get the destination and the extension of track
            let url = Bundle.main.url(forResource: Pressed , withExtension: "wav")
            player = try! AVAudioPlayer(contentsOf: url!)
            player.play()
            
            

        
    }
}

