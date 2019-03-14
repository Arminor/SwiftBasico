//
//  TableViewController.swift
//  SegundoEjercicio
//
//  Created by Laboratorio UNAM-Apple on 06/03/19.
//  Copyright © 2019 appSun. All rights reserved.
//

import UIKit


//Primero. Definir la estructura
struct Bebida{
    var codigo : Int
    var imagen : UIImage!
    var nombre : String
    var precio : Double
    var existencias: Int
    
    }


class TableViewController : UITableViewController {

    //Nuestra variable
    var bebidas : [Bebida] = [Bebida]()
    
    //Segundo. Funcion iniciar
    func iniciar(){
       bebidas = [
            Bebida(codigo: 0, imagen: #imageLiteral(resourceName: "acme"), nombre: "Dos equis", precio: 17.00, existencias: 20),

        
            Bebida(codigo: 1, imagen: #imageLiteral(resourceName: "modelo"), nombre: "Modelo", precio: 16.00, existencias: 20),
            Bebida(codigo: 2, imagen: #imageLiteral(resourceName: "bohemia"), nombre: "Bohemia", precio: 17.00, existencias: 22),
            Bebida(codigo: 3, imagen: #imageLiteral(resourceName: "quilmes"), nombre: "Quilmes", precio: 16.50, existencias: 13),
            Bebida(codigo: 4, imagen: #imageLiteral(resourceName: "bavaria"), nombre: "Bavaria", precio: 18.00, existencias: 8),
            Bebida(codigo: 5, imagen: #imageLiteral(resourceName: "acme"), nombre: "Acme Ita", precio: 18.00, existencias: 4),
            Bebida(codigo: 6, imagen: #imageLiteral(resourceName: "budha"), nombre: "Lucky Budha", precio: 16.50, existencias: 12),
            Bebida(codigo: 7, imagen: #imageLiteral(resourceName: "minerva"), nombre: "Minerva", precio: 17.90, existencias: 16),
            Bebida(codigo: 8, imagen: #imageLiteral(resourceName: "adams"), nombre: "Adams", precio: 20.00, existencias: 3),
            Bebida(codigo: 9, imagen: #imageLiteral(resourceName: "carolous"), nombre: "Gouden Carolus", precio: 20.00, existencias: 5),
            Bebida(codigo: 10, imagen: #imageLiteral(resourceName: "delirium"), nombre: "Delirium Tremens", precio: 21.00, existencias: 7)
        ]
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        //Tercero
        iniciar()
               
        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
       //Cuatroooo
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return bebidas.count
    }

    //Cinco. Aqui configuramos el cada celda
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {//Dar indentificador al table view
        let cell = tableView.dequeueReusableCell(withIdentifier: "sección", for: indexPath)

        // Configure the cell...
        let bebida = bebidas[indexPath.row]
        cell.textLabel?.text = bebida.nombre
        cell.imageView?.image = bebida.imagen
        cell.detailTextLabel?.text =
        "Precio: $\(String(bebida.precio))\n   Existencias:\(String(bebida.existencias))"
        cell.textLabel?.numberOfLines = 0
       
        return cell
    }
    
    //Paso 7
    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return CGFloat(100)
    }

    /*
    // Override to support conditional editing of the table view.
    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    */

    /*
    // Override to support editing the table view.
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            // Delete the row from the data source
            tableView.deleteRows(at: [indexPath], with: .fade)
        } else if editingStyle == .insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    */

    /*
    // Override to support rearranging the table view.
    override func tableView(_ tableView: UITableView, moveRowAt fromIndexPath: IndexPath, to: IndexPath) {

    }
    */

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the item to be re-orderable.
        return true
    }
    */

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
