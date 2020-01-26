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

var buildingList = [
    //0
    Building(coordinate: CLLocationCoordinate2DMake(40.431226, -86.914827), code: "ARMS", title: "Armstrong Hall", meetings: [Meeting]()),
    //1
    Building(coordinate: CLLocationCoordinate2DMake(40.427554, -86.919510), code: "BCC", title: "Black Cultural Center", meetings: [Meeting]()),
    //2
    Building(coordinate: CLLocationCoordinate2DMake(40.425683, -86.916298), code: "BRNG", title: "Beering Hall", meetings: [Meeting]()),
    //3
    Building(coordinate: CLLocationCoordinate2DMake(40.426554, -86.914375), code: "CL50", title: "Class of 1950 Lecture Hall", meetings: [Meeting]()),
    //4
    Building(coordinate: CLLocationCoordinate2DMake(40.428720, -86.921865), code: "CREC", title: "CoRec", meetings: [Meeting]()),
    //5
    Building(coordinate: CLLocationCoordinate2DMake(40.427926, -86.915035), code: "ELLT", title: "Elliot Hall of Music", meetings: [Meeting]()),
    //6
    Building(coordinate: CLLocationCoordinate2DMake(40.432137, -86.919524), code: "FORD", title: "Ford Dining Court", meetings: [Meeting]()),
    //7
    Building(coordinate: CLLocationCoordinate2DMake(40.429669, -86.913931), code: "FRNY", title: "Forney Hall", meetings: [Meeting]()),
    //8
    Building(coordinate: CLLocationCoordinate2DMake(40.430568, -86.914761), code: "HAMP", title: "Hampton Hall", meetings: [Meeting]()),
    //9
    Building(coordinate: CLLocationCoordinate2DMake(40.422986, -86.911590), code: "HAWK", title: "Hawkins Hall", meetings: [Meeting]()),
    //10
    Building(coordinate: CLLocationCoordinate2DMake(40.42820, -86.914433), code: "HOVD", title: "Hovde Hall", meetings: [Meeting]()),
    //11
    Building(coordinate: CLLocationCoordinate2DMake(40.427747, -86.911131), code: "KNOY", title: "Knoy Hall", meetings: [Meeting]()),
    //12
    Building(coordinate: CLLocationCoordinate2DMake(40.423729, -86.910814), code: "KRAN", title: "Krannert Building", meetings: [Meeting]()),
    //13
    Building(coordinate: CLLocationCoordinate2DMake(40.427490, -86.921549), code: "KRCH", title: "Krach Leadership Center", meetings: [Meeting]()),
    //14
    Building(coordinate: CLLocationCoordinate2DMake(40.427446, -86.916843), code: "LWSN", title: "Lawson Hall", meetings: [Meeting]()),
    //15
    Building(coordinate: CLLocationCoordinate2DMake(40.426352, -86.915507), code: "MATH", title: "Mathematical Sciences Building", meetings: [Meeting]()),
    //16
    Building(coordinate: CLLocationCoordinate2DMake(40.428149, -86.912863), code: "ME", title: "Mechanical Engineering Building", meetings: [Meeting]()),
    //17
    Building(coordinate: CLLocationCoordinate2DMake(40.429336, -86.912649), code: "MSEE", title: "Materials Science and Electrical Engineering Building", meetings: [Meeting]()),
    //18
    Building(coordinate: CLLocationCoordinate2DMake(40.424656, -86.916381), code: "MTHW", title: "Matthews Hall", meetings: [Meeting]()),
    //19
    Building(coordinate: CLLocationCoordinate2DMake(40.427158, -86.911163), code: "NUCL", title: "Nuclear Engineering Building", meetings: [Meeting]()),
    //20
    Building(coordinate: CLLocationCoordinate2DMake(40.430163, -86.913149), code: "PHYS", title: "Physics Building", meetings: [Meeting]()),
    //21
    Building(coordinate: CLLocationCoordinate2DMake(40.424728, -86.910568), code: "PMU", title: "Purdue Memorial Union", meetings: [Meeting]()),
    //22
    Building(coordinate: CLLocationCoordinate2DMake(40.427555, -86.912350), code: "POTR", title: "Potter Engineering Center", meetings: [Meeting]()),
    //23
    Building(coordinate: CLLocationCoordinate2DMake(40.426668, -86.915111), code: "PSYC", title: "Psychological Sciences", meetings: [Meeting]()),
    //24
    Building(coordinate: CLLocationCoordinate2DMake(40.430390, -86.916065), code: "PUSH", title: "PUSH Building", meetings: [Meeting]()),
    //25
    Building(coordinate: CLLocationCoordinate2DMake(40.423798, -86.909956), code: "RAWL", title: "Rawls Hall", meetings: [Meeting]()),
    //26
    Building(coordinate: CLLocationCoordinate2DMake(40.425790, -86.915157), code: "REC", title: "Recitation Building", meetings: [Meeting]()),
    //27
    Building(coordinate: CLLocationCoordinate2DMake(40.427040, -86.924664), code: "SHRV", title: "Shreve Hall", meetings: [Meeting]()),
    //28
    Building(coordinate: CLLocationCoordinate2DMake(40.425057, -86.912948), code: "STEW", title: "Stewart Center", meetings: [Meeting]()),
    //29
    Building(coordinate: CLLocationCoordinate2DMake(40.427431, -86.913237), code: "WALC", title: "WALC", meetings: [Meeting]()),
    //30
    Building(coordinate: CLLocationCoordinate2DMake(40.428569, -86.920832), code: "WILY", title: "Wiley Hall", meetings: [Meeting]()),
    //31
    Building(coordinate: CLLocationCoordinate2DMake(40.426461, -86.913058), code: "WTHR", title: "Wetherill Hall", meetings: [Meeting]()),
    //32
    Building(coordinate: CLLocationCoordinate2DMake(40.420885, -86.910786), code: "YONG", title: "Young Hall", meetings: [Meeting]())
]

func clearBuilding() {
    for bld in buildingList {
        bld.meetings = [Meeting]()
    }
}


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
        for i in stride(from: 0, through: (meetings.count-1), by: 1) {
            allMeetings += meetings[i].description + ", "
        }
        let endoflist = allMeetings.count - 2
        allMeetings = String(allMeetings.prefix(endoflist))
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
