//
//  Note.swift
//  
//
//  Created by Joao Rodrigo Ziegler on 08.10.20.
//

import Foundation
import AVFoundation

var player: AVAudioPlayer!

struct Note {
    let name: String


    init(_ name: String){
        self.name = name
        print(self.name)
    }

    mutating func play() {
        let url = Bundle.main.url(forResource: self.name, withExtension: "wav")
        player = try! AVAudioPlayer(contentsOf: url!)
        player.play()
    }
}
