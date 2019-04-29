//
//  TableViewCell.swift
//  tercerEjercicioSwiftBasico
//
//  Created by SSiOS on 3/12/19.
//  Copyright © 2019 SSiOS. All rights reserved.
//

import UIKit

class TableViewCell : UITableViewCell {

    @IBOutlet weak var imagen : UIImageView!
    @IBOutlet weak var  etiqueta : UILabel!
    
    func setContacto(contacto : Contacto){
        imagen.image = contacto.foto
        etiqueta.text = contacto.nombre
    }

    func setOutlets(){
        imagen.layer.cornerRadius = imagen.frame.size.width / 2
        imagen.clipsToBounds = true
    }
    
}
