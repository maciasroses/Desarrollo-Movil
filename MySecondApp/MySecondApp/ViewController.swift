//
//  ViewController.swift
//  MySecondApp
//
//  Created by Macías Romero on 30/09/22.
//

import UIKit

class ViewController: UIViewController {
    @IBAction func haciaImagen(_ sender: Any) {
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let imageViewController = storyboard.instantiateViewController(withIdentifier: "imageViewController")
        imageViewController.modalPresentationStyle = .fullScreen
        self.present(imageViewController, animated: false)
    }
    
    @IBOutlet weak var numeroInferior: UITextField!
    @IBOutlet weak var numeroSuperior: UITextField!
    var titulo: String = ""
    
    @IBAction func division(_ sender: Any) {
        let dividendoUno = Float (numeroSuperior.text!)
        let divisorUno = Float ((numeroInferior.text ?? "0"))
        var mensaje = "Favor de llenar los campos."
        
        if (dividendoUno != nil && divisorUno != nil){
            let resultado = (dividendoUno ?? 0)/(divisorUno ?? 0)
            mensaje = String(resultado)
        }
        //MostrarAlerta(mensaje: mensaje, titulo: "Division");
        titulo = "Division 2"
        MostrarAlerta(valor: mensaje)
    }
    
    @IBAction func botonlogin(_ sender: Any) {
        MostrarAlerta(mensaje: usuario.text!, titulo: "Texto")
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
    
    func MostrarAlerta(mensaje: String, titulo: String){
        let alert = UIAlertController(title: titulo, message: mensaje, preferredStyle: UIAlertController.Style.alert)
        alert.addAction(UIAlertAction(title: "Cerrar", style: UIAlertAction.Style.cancel))
        self.present(alert, animated: true, completion: nil)
    }
    
    func MostrarAlerta(valor: String){
        MostrarAlerta(mensaje: valor, titulo: self.titulo)
    }

}

