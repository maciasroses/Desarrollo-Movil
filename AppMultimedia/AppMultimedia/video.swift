//
//  video.swift
//  AppMultimedia
//
//  Created by Macías Romero on 15/10/22.
//

import UIKit
import AVKit

class video: UIViewController {

    @IBAction func videoOpenButton(_ sender: Any) {
        let rute = Bundle.main.path(forResource: "video", ofType: "mp4")
        let player = AVPlayerViewController()
        let videourl = URL(filePath: rute!)
        let video = AVPlayer(url: videourl)
        player.player = video
        present(player, animated: true, completion: {
            video.play()
        })
    }
    @IBAction func homeButton(_ sender: Any) {
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let home = storyboard.instantiateViewController(withIdentifier: "home")
        home.modalPresentationStyle = .fullScreen
        self.present(home, animated: false)
    }
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}
