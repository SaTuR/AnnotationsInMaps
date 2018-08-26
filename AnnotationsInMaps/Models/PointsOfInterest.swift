//
//  PointsOfInterest.swift
//  AnnotationsInMaps
//
//  Created by Ihonahan Buitrago on 1/27/16.
//  Copyright © 2016 NextUniversity. All rights reserved.
//

import UIKit
import MapKit


class PointsOfInterest: NSObject, MKAnnotation {

    var title : String?
    var coordinate : CLLocationCoordinate2D
    var subtitle : String?
    
    override init() {
        title = ""
        coordinate = CLLocationCoordinate2DMake(0, 0)
        subtitle = ""

        super.init()
    }
    
    init(name: String, latitude: CLLocationDegrees, longitude: CLLocationDegrees, info: String) {
        self.title = name
        self.coordinate = CLLocationCoordinate2DMake(latitude, longitude)
        self.subtitle = info

        super.init()
    }
    
    
    static func pointsOfInterestArray() -> [PointsOfInterest] {
        var result = [PointsOfInterest]()
        
        result.append(PointsOfInterest(name: "Aeropuerto Olaya Herrera", latitude: 6.219610, longitude: -75.590204, info: "Aeropuerto de la ciudad de Medellín que cuenta con operaciones comerciales de aviación general regionales y nacionales."))
        result.append(PointsOfInterest(name: "Parque de los pies descalzos", latitude: 6.244722, longitude: -75.577222, info: "Parque público de la ciudad de Medellín creado por las Empresas Públicas de Medellín y cuya principal característica es el disfrute de actividades lúdicas al aire libre invitando a los visitantes a estar descalzos para tener un contacto directo con las diferentes superficies que componen al parque."))
        result.append(PointsOfInterest(name: "Pueblito paisa", latitude: 6.236500, longitude: -75.580500, info: "Sitio de interés turístico de la ciudad de Medellín que representa la tradicional estructura municipal de un típico pueblo paisa, gentilicio que se le da los habitantes de los departamentos de Antioquia, Caldas, Risaralda y Quindío en Colombia."))
        result.append(PointsOfInterest(name: "Parque Explora", latitude: 6.270556, longitude: -75.565556, info: "Parque interactivo ubicado en la ciudad de Medellín cuyo objetivo es la difusión de la ciencia y la tecnología por medio de actividades lúdicas, principalmente orientado al público infantil aunque con exposiciones aptas para todas las edades."))
        
        
        return result
    }
    
}
