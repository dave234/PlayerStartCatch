//
//  ViewController.swift
//  PlayerStartCatch
//
//  Created by David O'Neill on 1/3/18.
//  Copyright © 2018 David O'Neill. All rights reserved.
//

import UIKit
import SwiftTryCatch
import AVFoundation

class ViewController: UIViewController {

    let player = AVAudioPlayerNode()
    let audioEngine = AVAudioEngine()

    override func viewDidLoad() {
        super.viewDidLoad()

        audioEngine.attach(player)

        audioEngine.connect(player, to: audioEngine.mainMixerNode, format: nil)

//        try? audioEngine.start()

        SwiftTryCatch.try({
            self.player.play()
        }, catch: { e in
            if let exception = e {
                print("description: " + exception.description)
            }
        }) {
            print("hodor")
        }
    }
}

