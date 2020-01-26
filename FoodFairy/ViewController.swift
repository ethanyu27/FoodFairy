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
        myMap.delegate = self
        
        let center = CLLocation(latitude: 40.425869, longitude: -86.908066)
        // set initial location in Honolulu
        //let initialLocation = CLLocation(latitude: 21.282778, longitude: -157.829444)
        
        centerMap(location: center)
        let meetings = [Meeting(food: "pizza", desc: "black club", room: 1112, time: "6:30", buildingCode: "LWSN")]
        // Do any additional setup after loading the view.
        // show artwork on map
        let building = Building(coordinate: CLLocationCoordinate2D(latitude: 40.425869, longitude: -86.908066),
                                code: "LWSN", title: "Lawson", meetings: meetings)
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

extension ViewController {
    // 1
    func mapView(_ mapView: MKMapView, viewFor annotation: MKAnnotation) -> MKAnnotationView? {
        // 2
        guard let annotation = annotation as? Building else { return nil }
        // 3
        let identifier = "marker"
        var view: MKMarkerAnnotationView
        // 4
        if let dequeuedView = mapView.dequeueReusableAnnotationView(withIdentifier: identifier)
            as? MKMarkerAnnotationView {
            dequeuedView.annotation = annotation
            view = dequeuedView
        } else {
            // 5
            view = MKMarkerAnnotationView(annotation: annotation, reuseIdentifier: identifier)
            view.canShowCallout = true
            view.calloutOffset = CGPoint(x: -5, y: 5)
            view.rightCalloutAccessoryView = UIButton(type: .detailDisclosure)
        }
        return view
    }
    func mapView(_ mapView: MKMapView, annotationView view: MKAnnotationView,
                 calloutAccessoryControlTapped control: UIControl) {
//        let location = view.annotation as! Building
        //      let launchOptions = [MKLaunchOptionsDirectionsModeKey: MKLaunchOptionsDirectionsModeDriving]
        //      location.mapItem().openInMaps(launchOptions: launchOptions)
        
        
    }
    
}
