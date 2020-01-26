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
        // let center = CLLocation(latitude: 40.423777, longitude: 86.921277)
        // set initial location in Honolulu
        let initialLocation = CLLocation(latitude: 21.282778, longitude: -157.829444)

        centerMap(location: initialLocation)
        let meetings = [Meeting(food: "pizza", desc: "black club", room: 1112, time: "6:30", buildingCode: "LWSN")]
        // Do any additional setup after loading the view.
        // show artwork on map
        let building = Building(coordinate: CLLocationCoordinate2D(latitude: 21.283921, longitude: -157.831661),
                               code: "LWSN", name: "Lawson", meetings: meetings)
        myMap.addAnnotation(building)

        
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

