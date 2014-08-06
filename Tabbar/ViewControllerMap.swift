//
//  FirstViewController.swift
//  Tabbar
//
//  Created by Philipp Süess on 10.07.14.
//  Copyright (c) 2014 Philipp Süess. All rights reserved.
//



import UIKit
import MapKit


class ViewControllerMap: UIViewController {
    
    @IBOutlet var MapView: MKMapView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Längen- und Breitengrad der PH Luzern
        var latitude:CLLocationDegrees =  47.0529200
        var longitude:CLLocationDegrees = 8.3045690
        
        var latDelta:CLLocationDegrees = 0.01
        var longDelta:CLLocationDegrees = 0.01
        
        var mapSpan:MKCoordinateSpan = MKCoordinateSpanMake(latDelta, longDelta)
        var PHLocation:CLLocationCoordinate2D = CLLocationCoordinate2DMake(latitude, longitude)
        var mapRegion:MKCoordinateRegion = MKCoordinateRegionMake(PHLocation, mapSpan)
        
        self.MapView.setRegion(mapRegion, animated:true)
        
        var mapAnnotation = MKPointAnnotation()
        mapAnnotation.coordinate = PHLocation
        mapAnnotation.title = "Pädagogische Hochschule Luzern"
        mapAnnotation.subtitle = "Löwengraben 14"
        
        // disable Annotation for userpin
        self.MapView.userLocation.title = "You"
        
        // Add Annotation to map and select the Annotation by default
        self.MapView.addAnnotation(mapAnnotation)
        self.MapView.selectAnnotation(mapAnnotation, animated: true)
        
    }
    



    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
}

