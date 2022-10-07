//
//  ViewController.swift
//  MySecondApp
//
//  Created by Macías Romero on 30/09/22.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var numeroInferior: UITextField!
    @IBOutlet weak var numeroSuperior: UITextField!
    
    
    @IBAction func division(_ sender: Any) {
        let dividendoUno = Float (numeroSuperior.text!)
        let divisorUno = Float ((numeroInferior.text ?? "0"))
        var mensaje = "Favor de llenar los campos."
        
        //Codigo con validacion de variables
//        if (dividendoUno != nil && divisorUno != nil){
//            let resultado = (dividendoUno ?? 0)/(divisorUno ?? 0)
//            mensaje = String(resultado)
//        }
        
        //Codigo con control de excepciones
//        do {
//            let resultado = try (dividendoUno!)/(divisorUno!)
//            mensaje = String(resultado)
//        } catch {
//            mensaje = "Ha ocurrido un error inesperado"
//        }
        let resultado = (dividendoUno!)/(divisorUno!)
        mensaje = String(resultado)
        
        let alert = UIAlertController(title: "ALERTA", message: mensaje, preferredStyle: UIAlertController.Style.alert)
        alert.addAction(UIAlertAction(title: "Cerrar", style: UIAlertAction.Style.cancel))
        self.present(alert, animated: true, completion: nil)
    }
    
    @IBAction func botonlogin(_ sender: Any) {
        let alert = UIAlertController(title: "ALERTA", message: usuario.text, preferredStyle: UIAlertController.Style.alert)
        alert.addAction(UIAlertAction(title: "Cerrar", style: UIAlertAction.Style.cancel))
        self.present(alert, animated: true, completion: nil)
    }
    
    @IBOutlet weak var tituloLabel: UILabel!
    @IBOutlet weak var usuario: UITextField!
    @IBOutlet weak var contrasenia: UITextField!
    override func viewDidLoad() {
        
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        tituloLabel.text = "Segunda Aplicacion"
        tituloLabel.textColor = UIColor(red:36/255, green: 80/255, blue: 155/255, alpha: 1.0)
    }


}

