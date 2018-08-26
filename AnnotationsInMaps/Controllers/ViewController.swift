//
//  ViewController.swift
//  AnnotationsInMaps
//
//  Created by Ihonahan Buitrago on 1/27/16.
//  Copyright © 2016 NextUniversity. All rights reserved.
//

import UIKit
import MapKit

class ViewController: UIViewController, MKMapViewDelegate {
    
    @IBOutlet weak var fullContainer : UIView!
    @IBOutlet weak var mapView : MKMapView!
    
    var pois = PointsOfInterest.pointsOfInterestArray()

    let locationManager = CLLocationManager()

    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        self.locationManager.requestWhenInUseAuthorization()
        self.mapView.showsUserLocation = true
        self.mapView.delegate = self
        
        self.mapView.addAnnotations(self.pois)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


    //MARK:- MKMapViewDelegate methods
    func mapView(_ mapView: MKMapView, viewFor annotation: MKAnnotation) -> MKAnnotationView? {
        if annotation.isKind(of: PointsOfInterest.self) {
            var mountainViewPin = mapView.dequeueReusableAnnotationView(withIdentifier: "PinView") as? PinView
            if mountainViewPin == nil {
                mountainViewPin =  PinView(annotation: annotation, reuseIdentifier: "PinView")
            }
            
            return mountainViewPin
        } else {
            return nil
        }
    }

}

