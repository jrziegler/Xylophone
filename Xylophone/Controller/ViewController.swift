//
//  ViewController.swift
//  Xylophone
//
//  Created by Joao Rodrigo Ziegler on 08.10.20.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

    }

    @IBAction func keyPressed(_ sender: UIButton) {

        //Reduces the sender's (the button that got pressed) opacity to half.
        sender.alpha = 0.5

        var sound = Note(sender.currentTitle!)
        sound.play()

        //Code should execute after 0.2 second delay.
        DispatchQueue.main.asyncAfter(deadline: .now() + 0.2) {
            //Bring's sender's opacity back up to fully opaque.
            sender.alpha = 1.0
        }
    }
}

