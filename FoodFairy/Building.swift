//
//  Building.swift
//  FoodFairy
//
//  Created by Grant Yolasan on 1/25/20.
//  Copyright © 2020 Fairy Inc. All rights reserved.
//

import Foundation
import MapKit

class Building: NSObject, MKAnnotation {
    var coordinate: CLLocationCoordinate2D
    
    let code: String?
    let name: String?
    var meetings: [Meeting]
    
    init(coordinate: CLLocationCoordinate2D, code: String?, name: String?, meetings: [Meeting]) {
        self.coordinate = coordinate
        self.code = code
        self.name = name
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
}
