//
//  Building.swift
//  FoodFairy
//
//  Created by Grant Yolasan on 1/25/20.
//  Copyright © 2020 Fairy Inc. All rights reserved.
//

import Foundation
import MapKit
import Contacts

class Building: NSObject, MKAnnotation {
    var coordinate: CLLocationCoordinate2D
    let title: String?
    let code: String?
    var meetings: [Meeting]
    
    init(coordinate: CLLocationCoordinate2D, code: String?, title: String?, meetings: [Meeting]) {
        self.coordinate = coordinate
        self.code = code
        self.title = title
        self.meetings = meetings
        
        super.init()
    }
    
    var subtitle: String? {
        var allMeetings = ""
        for i in 0...meetings.count-1 {
            allMeetings += meetings[i].description + ", "
        }
        //let len = allMeetings.lastIndex(of: ",")
        //allMeetings = allMeetings[..<len]
        return allMeetings
    }
    
    // Annotation right callout accessory opens this mapItem in Maps app
    func mapItem() -> MKMapItem {
      let addressDict = [CNPostalAddressStreetKey: subtitle!]
      let placemark = MKPlacemark(coordinate: coordinate, addressDictionary: addressDict)
      let mapItem = MKMapItem(placemark: placemark)
      mapItem.name = title
      return mapItem
    }

}
