//
//  MainViewController.swift
//  MySecondApp
//
//  Created by Macías Romero on 14/10/22.
//

import UIKit
import AVKit

class MainViewController: UIViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    @IBAction func mostrarVideo(_ sender: Any) {
        let rute = Bundle.main.path(forResource: "BigBuckBunny", ofType: "mp4")
        let player = AVPlayerViewController()
        let videourl = URL(filePath: rute!)
        let video = AVPlayer(url: videourl)
        player.player = video
        present(player, animated: true, completion: {
            video.play()
        })
    }
}
