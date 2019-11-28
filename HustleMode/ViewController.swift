//
//  ViewController.swift
//  HustleMode
//
//  Created by Nitisha on 11/23/19.
//  Copyright © 2019 Nitisha Bhandari. All rights reserved.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {

    @IBOutlet weak var darkBlueBG: UIImageView!
    @IBOutlet weak var pwrBtn: UIButton!
    @IBOutlet weak var cloudHolder: UIView!
    @IBOutlet weak var rocket: UIImageView!
    @IBOutlet weak var hustleLbl: UILabel!
    @IBOutlet weak var OnLbl: UILabel!
   
    var player: AVAudioPlayer!
    
    override func viewDidLoad() {
        
        super.viewDidLoad()
        
        let path = Bundle.main.path(forResource: "hustle-on", ofType: "wav")!
        let url = URL(fileURLWithPath: path)
        
        do {
            player = try AVAudioPlayer( contentsOf: url)
            player.prepareToPlay()
            
        } catch let error as NSError {
            print(error.description)
        }
        
    }

    @IBAction func powerButtonPressed(_ sender: Any) {
        cloudHolder.isHidden = false
        darkBlueBG.isHidden = false
        pwrBtn.isHidden = true
        
        player.play()
        
        UIView.animate(withDuration: 2.3, animations: {
            self.rocket.frame = CGRect(x: 0, y: 20, width: 414, height: 712)
        }) { (finished) in
            self.hustleLbl.isHidden = false
            self.OnLbl.isHidden = false
            
        }
    }
    
    
}

