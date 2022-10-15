//
//  ViewController.swift
//  AppMultimedia
//
//  Created by Macías Romero on 15/10/22.
//

import UIKit

class ViewController: UIViewController {

    @IBAction func collageButton(_ sender: Any) {
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let collage = storyboard.instantiateViewController(withIdentifier: "collage")
        collage.modalPresentationStyle = .fullScreen
        self.present(collage, animated: false)
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

