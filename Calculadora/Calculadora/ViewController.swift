//
//  ViewController.swift
//  Calculadora
//
//  Created by Macías Romero on 05/10/22.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var num1: UITextField!
    @IBOutlet weak var operador: UILabel!
    @IBOutlet weak var num2: UITextField!
    @IBOutlet weak var resp: UILabel!
    
    @IBAction func sumar(_ sender: Any) {
        let n1 = Int(num1.text!)
        let n2 = Int(num2.text!)
        let resultado = n1!+n2!
        operador.text = "+"
        resp.text = String(resultado)
    }
    
    @IBAction func restar(_ sender: Any) {
        let n1 = Int(num1.text!)
        let n2 = Int(num2.text!)
        let resultado = n1!-n2!
        operador.text = "-"
        resp.text = String(resultado)
    }
    
    @IBAction func multi(_ sender: Any) {
        let n1 = Int(num1.text!)
        let n2 = Int(num2.text!)
        let resultado = n1!*n2!
        operador.text = "*"
        resp.text = String(resultado)
    }
    
    @IBAction func div(_ sender: Any) {
        let n1 = Float(num1.text!)
        let n2 = Float(num2.text!)
        let resultado = n1!/n2!
        operador.text = "/"
        resp.text = String(resultado)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

