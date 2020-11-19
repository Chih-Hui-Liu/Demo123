//
//  ViewController.swift
//  Demo
//
//  Created by Leo on 2020/11/19.
//

import UIKit
import AVFoundation
class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        let hand = UIImage(named: "hand")
        let handView = UIImageView(image: hand)
        
       let url = URL(string: "https://bit.ly/3kLlPRp")
              let player = AVPlayer(url: url!)
              let playerLayer = AVPlayerLayer(player: player)
              playerLayer.videoGravity = .resizeAspectFill
              view.layer.addSublayer(playerLayer)
              playerLayer.frame = CGRect(origin: CGPoint(x: 30, y: 50), size: handView.frame.size)
              playerLayer.mask = handView.layer
              player.play()
 
    }


}

