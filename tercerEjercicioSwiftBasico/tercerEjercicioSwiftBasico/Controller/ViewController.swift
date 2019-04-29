//
//  ViewController.swift
//  tercerEjercicioSwiftBasico
//
//  Created by SSiOS on 3/12/19.
//  Copyright © 2019 SSiOS. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var tabla : UITableView!
    
    var contactos : [Contacto] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        contactos = pasarValoresAlArreglo()
        tabla.delegate = self
        tabla.dataSource = self
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    
    
    func pasarValoresAlArreglo() -> [Contacto]{
        var unArreglo : [Contacto] = []
        
        let chico1 = Contacto(nombre: "Jorge", foto: #imageLiteral(resourceName: "jorge"))
        let chica1 = Contacto(nombre: "Sandra", foto: #imageLiteral(resourceName: "sandra"))
        let chico2 = Contacto(nombre: "Alejandro", foto: #imageLiteral(resourceName: "Alejandro"))
        let chica2 = Contacto(nombre: "Carmen", foto: #imageLiteral(resourceName: "carmen"))
        let chico3 = Contacto(nombre: "Oscar", foto: #imageLiteral(resourceName: "oscar"))
        let chico4 = Contacto(nombre: "Andres", foto: #imageLiteral(resourceName: "Andres"))
        let chico5 = Contacto(nombre: "Octavio", foto: #imageLiteral(resourceName: "YoMero"))
        
        unArreglo.append(chica1)
        unArreglo.append(chico1)
        unArreglo.append(chico2)
        unArreglo.append(chico3)
        unArreglo.append(chica2)
        unArreglo.append(chico4)
        unArreglo.append(chico5)
        return unArreglo
    }
    
}
extension ViewController : UITableViewDataSource, UITableViewDelegate{
    
    func tableView(_ tableView : UITableView, numberOfRowsInSection section : Int) -> Int{
        return contactos.count
    }
    
    
    func tableView(_ tableView : UITableView, cellForRowAt indexPath : IndexPath )-> UITableViewCell{
        let contacto = contactos[indexPath.row]
        let renglon = tableView.dequeueReusableCell(withIdentifier: "renglon") as! TableViewCell
        
        renglon.setContacto(contacto: contacto)
        renglon.setOutlets()
        
        return renglon
    }
    
}


