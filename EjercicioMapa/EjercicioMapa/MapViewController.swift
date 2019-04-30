//  Andrés Miguel Ríos Minor. Curso de Swift Básico. 
//  MapViewController.swift
//  EjercicioMapa
//     Los mapas dentro del desarrollo nativo de iOS se trabajan, se desarrollan con el servicio web de AppleMaps  
//     A nosotros nos toca utilizar las funciones y los componentes de código que nos proporciona como framework AppleMaps 
//      a través de MapKit y CoreLocation, otro servicio de Apple.
//
//    MapKit y CoreLocation
//        https://developer.apple.com/documentation/mapkit
//        https://developer.apple.com/documentation/corelocation
//    
//    
//        https://developer.apple.com/library/archive/documentation/UserExperience/Conceptual/LocationAwarenessPG/Introduction/Introduction.html#//apple_ref/doc/uid/TP40009497
//  Created by SSiOS on 3/14/19.
//  Copyright © 2019 SSiOS. All rights reserved.
//



import UIKit


//Importante. Se tienen que importar MapKit y CoreLocation. Ambos frameworks para crear la visualización del mapa
//La ubicación y el rastreo de las ubicaciones, sea del dispositivo o de las coordenadas dadas.
import MapKit
import CoreLocation

//Coordenadas de la ubicación elegida
//19.295393-> Latitud
//-99.132996-> Longuitud



class MapViewController: UIViewController {
    
    //Objeto de la Interfaz Gráfica. Outlet de referencia 
    @IBOutlet weak var Mapa : MKMapView!
    
    
    //Nuestra interfaz Gráfica.
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //Atributo que hace referencia al tipo de mapa que vamos a visualizar. '.'<tipo>
        Mapa.mapType = .standard
        
        //Dos variables que vamos a utilizar como parámetros en los métodos MKCoordinateRegion y addAnnotation
        
        //Esta variable recibe las coordenadas, es nuestra ubicación. El icono que recibe en dónde ubicarse
        let puntoGeografico = CLLocationCoordinate2DMake(19.295393, -99.132996)
        //Esta variable es un componente de la interfaz gráfica que muestra texto
        let texto = MKPointAnnotation()
        
        //MKPointAnnotation es una clase. texto es el identificador de nuestro objeto, es entonces nuestro objeto pues.
        //coordinate, title, subtitle son atributos de la clase MKPointAnnotation brindada por nuestro framework MapKit
        texto.coordinate = puntoGeografico
        texto.title = "Copacabana"
        texto.subtitle = "Los mejores desde 1875"
        
        //Area que abarca. Mientras más se acerque al 1 más distancia abaracará ebriendo el mapa. 
        let span = MKCoordinateSpan(latitudeDelta: 0.002, longitudeDelta: 0.002)
        //Distribución de la ubicación al ser visualizada.
        let region = MKCoordinateRegion(center: puntoGeografico, span: span)
        
        //Con estos métodos le damos el comportamiento al mapa.
        let region = MKCoordinateRegion(center: puntoGeografico, span: span)
        Mapa.setRegion(region, animated: true)
        Mapa.addAnnotation(texto)
        
       
    }
 

}
