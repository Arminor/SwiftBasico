//
//  ViewController.swift
//  primerEjercicio
//
//  Created by Laboratorio UNAM-Apple 16 on 14/02/19.
//  Copyright © 2019 FCA. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    
    // Declarar variable
    var botonActivado : Bool = true
    
    //Declarar elementos gráficos
    @IBOutlet weak var oBoton : UIButton!
    @IBOutlet weak var oTextView : UITextView!
    @IBOutlet weak var oImagen : UIImageView!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        botonActivado = !botonActivado
        iniciar()
    }

    func iniciar(){
        
        oBoton.setTitle("🌝", for: .normal)
        oTextView.text = """
        Esta pequeña aplicación
        despliega este mensaje
        de texto al activar
        el botón
        """
        oTextView.backgroundColor = .white
        oTextView.textColor = .black
        oImagen.image = UIImage(named: "dia")
        
    }
    
    func activacionBoton(){
        if botonActivado{
            view.backgroundColor = .black
            oBoton.setTitle("🌚", for: .normal)
            oTextView.backgroundColor = .black
            oTextView.textColor = .white
            oTextView.text = """
            Se cambian los valores del texto,
            los colores y también
            la imagen
            """
            oImagen.image = UIImage(named: "noche")
        }else{
            view.backgroundColor = .white
            iniciar()
        }
    }
    
    @IBAction func fBoton(_ sender : Any){
        botonActivado = !botonActivado
        activacionBoton()
    }
}

