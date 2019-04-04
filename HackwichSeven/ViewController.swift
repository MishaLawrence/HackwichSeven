//
//  ViewController.swift
//  HackwichSeven
//
//  Created by CM Student on 4/4/19.
//  Copyright © 2019 Misha Lawrence. All rights reserved.
//

import UIKit

import MapKit
import CoreLocation
class ViewController: UIViewController {

    @IBOutlet var mapView: MKMapView!
    //set the initial location to UHWO
    let initialLocation = CLLocation(latitude: 21.361888 , longitude: -158.055725)
    //set region around UHWO to 1000m
    let regionRadius: CLLocationDistance = 10000
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        centerMapOnLocation(location: initialLocation)
        
        //create a restaurant object and set all the arguments to each of the three parameters
        let restaurantOne = Restaurant(title: "Kalapawai" , type: "American", coordinate: CLLocationCoordinate2D(latitude: 21.346470, longitude: -158.080098))
        mapView.addAnnotation(restaurantOne)
        
        // Do any additional setup after loading the view, typically from a nib.
    }
func centerMapOnLocation(location: CLLocation) {
    let coordinateRegion = MKCoordinateRegionMakeWithDistance(location.coordinate,regionRadius,regionRadius)
    mapView.setRegion(coordinateRegion, animated: true)
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}

