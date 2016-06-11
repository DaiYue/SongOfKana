//
//  ViewController.swift
//  SongOfKana
//
//  Created by 赵嵩阳 on 16/6/11.
//  Copyright © 2016年 FindTheLamp Studio. All rights reserved.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {
    
    var audioPlayer = AVAudioPlayer()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let path = NSBundle.mainBundle().URLForResource("song1", withExtension: "mp3")
        
        do {
            try audioPlayer = AVAudioPlayer(contentsOfURL: path!)
        } catch {
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func tapedAction(sender: AnyObject) {
        audioPlayer.play()
    }

}

