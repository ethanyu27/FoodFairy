//
//  ViewController.swift
//  FoodFairy
//
//  Created by Ethan Yu on 1/25/20.
//  Copyright © 2020 Fairy Inc. All rights reserved.
//

import UIKit
import MapKit

class ViewController: UIViewController, MKMapViewDelegate {
    @IBOutlet weak var myMap: MKMapView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        //let center = CLLocation(latitude: 40.423777, longitude: 86.921277)
        // set initial location in Honolulu
        let initialLocation = CLLocation(latitude: 21.282778, longitude: -157.829444)

        centerMap(location: initialLocation)
        // Do any additional setup after loading the view.
        
    print("Test")

    }

    func centerMap(location: CLLocation) {
        let radius = 1000
        
        let region = MKCoordinateRegion(center: location.coordinate, latitudinalMeters: CLLocationDistance(radius), longitudinalMeters: CLLocationDistance(radius))
        myMap.setRegion(region, animated: true)
        
        //myMap.region = region
    }
    
    func addAnnotationToMap(location: CLLocation) {
        //let pin = MKAnnotation(location)
        //let annotation = MKAnnotationView(annotation: <#T##MKAnnotation?#>, reuseIdentifier: <#T##String?#>)
    }
}

