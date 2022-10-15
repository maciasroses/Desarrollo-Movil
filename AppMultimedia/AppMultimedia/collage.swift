//
//  collage.swift
//  AppMultimedia
//
//  Created by Macías Romero on 15/10/22.
//

import UIKit

class collage: UIViewController {

    @IBAction func videoButton(_ sender: Any) {
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let video = storyboard.instantiateViewController(withIdentifier: "video")
        video.modalPresentationStyle = .fullScreen
        self.present(video, animated: false)
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}
