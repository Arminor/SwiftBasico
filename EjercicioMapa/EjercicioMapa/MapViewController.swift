//
//  MapViewController.swift
//  EjercicioMapa
//
//  Created by SSiOS on 3/14/19.
//  Copyright © 2019 SSiOS. All rights reserved.
//



import UIKit
import MapKit
import CoreLocation


//19.295393-> Latitud
//-99.132996-> Longuitud



class MapViewController: UIViewController {
    
    @IBOutlet weak var Mapa : MKMapView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        Mapa.mapType = .standard
        
        let puntoGeográfico = CLLocationCoordinate2DMake(19.295393, -99.132996)
        let texto = MKPointAnnotation()
        
        texto.coordinate = puntoGeográfico
        texto.title = "Copacabana"
        texto.subtitle = "Los mejores desde 1875"
        
        let span = MKCoordinateSpan(latitudeDelta: 0.002, longitudeDelta: 0.002)
        let region = MKCoordinateRegion(center: puntoGeográfico, span: span)
        Mapa.setRegion(region, animated: true)
        Mapa.addAnnotation(texto)
        
        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
