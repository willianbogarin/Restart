//
//  AudioPlayer.swift
//  Restart
//
//  Created by Willian Bogarin Jr on 2023. 09. 20..
//

import Foundation

import AVFoundation

var audioPlayer : AVAudioPlayer?

func playSound(sound: String, type: String) {
    if let path = Bundle.main.path(forResource: sound, ofType: type){
        do {
            audioPlayer = try AVAudioPlayer(contentsOf: URL(fileURLWithPath: path))
            audioPlayer?.play()
        }catch {
            print("Could not play the sound file")
        }
        
    }
    print("Sound played \(sound)")
}
