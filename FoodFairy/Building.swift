//
//  Building.swift
//  FoodFairy
//
//  Created by Grant Yolasan on 1/25/20.
//  Copyright © 2020 Fairy Inc. All rights reserved.
//

import Foundation
import MapKit

var buildingList = [
    Building(coordinate: CLLocationCoordinate2DMake(40.427555, -86.912350), code: "POTR", name: "Potter Engineering Center", meetings: [Meeting]()),
    Building(coordinate: CLLocationCoordinate2DMake(40.425683, -86.916298), code: "BRNG", name: "Beering Hall", meetings: [Meeting]()),
    Building(coordinate: CLLocationCoordinate2DMake(40.427554, -86.919510), code: "BCC", name: "Black Cultural Center", meetings: [Meeting]()),
    Building(coordinate: CLLocationCoordinate2DMake(40.426554, -86.914375), code: "CL50", name: "Class of 1950 Lecture Hall", meetings: [Meeting]()),
    Building(coordinate: CLLocationCoordinate2DMake(40.430568, -86.914761), code: "HAMP", name: "Hampton Hall", meetings: [Meeting]()),
    Building(coordinate: CLLocationCoordinate2DMake(40.427926, -86.915035), code: "ELLT", name: "Elliot Hall of Music", meetings: [Meeting]()),
    Building(coordinate: CLLocationCoordinate2DMake(40.427040, -86.924664), code: "SHRV", name: "Shreve Hall", meetings: [Meeting]()),
    Building(coordinate: CLLocationCoordinate2DMake(40.420885, -86.910786), code: "YONG", name: "Young Hall", meetings: [Meeting]()),
    Building(coordinate: CLLocationCoordinate2DMake(40.429669, -86.913931), code: "FRNY", name: "Forney Hall", meetings: [Meeting]()),
    Building(coordinate: CLLocationCoordinate2DMake(40.428720, -86.921865), code: "CREC", name: "CoRec", meetings: [Meeting]()),
    Building(coordinate: CLLocationCoordinate2DMake(40.432137, -86.919524), code: "FORD", name: "Ford Dining Court", meetings: [Meeting]()),
    Building(coordinate: CLLocationCoordinate2DMake(40.42820, -86.914433), code: "HOVD", name: "Hovde Hall", meetings: [Meeting]()),
    Building(coordinate: CLLocationCoordinate2DMake(40.422986, -86.911590), code: "HAWK", name: "Hawkins Hall", meetings: [Meeting]()),
    Building(coordinate: CLLocationCoordinate2DMake(40.428569, -86.920832), code: "WILY", name: "Wiley Hall", meetings: [Meeting]()),
    Building(coordinate: CLLocationCoordinate2DMake(40.423798, -86.909956), code: "RAWL", name: "Rawls Hall", meetings: [Meeting]()),
    Building(coordinate: CLLocationCoordinate2DMake(40.427490, -86.921549), code: "KRCH", name: "Krach Leadership Center", meetings: [Meeting]()),
    Building(coordinate: CLLocationCoordinate2DMake(40.423729, -86.910814), code: "KRAN", name: "Krannert Building", meetings: [Meeting]()),
    Building(coordinate: CLLocationCoordinate2DMake(40.429336, -86.912649), code: "MSEE", name: "Materials Science and Electrical Engineering Building", meetings: [Meeting]()),
    Building(coordinate: CLLocationCoordinate2DMake(40.426352, -86.915507), code: "MATH", name: "Mathematical Sciences Building", meetings: [Meeting]()),
    Building(coordinate: CLLocationCoordinate2DMake(40.424656, -86.916381), code: "MTHW", name: "Matthews Hall", meetings: [Meeting]()),
    Building(coordinate: CLLocationCoordinate2DMake(40.427747, -86.911131), code: "KNOY", name: "Knoy Hall", meetings: [Meeting]()),
    Building(coordinate: CLLocationCoordinate2DMake(40.428149, -86.912863), code: "ME", name: "Mechanical Engineering Building", meetings: [Meeting]()),
    Building(coordinate: CLLocationCoordinate2DMake(40.431226, -86.914827), code: "ARMS", name: "Armstrong Hall", meetings: [Meeting]()),
    Building(coordinate: CLLocationCoordinate2DMake(40.427158, -86.911163), code: "NUCL", name: "Nuclear Engineering Building", meetings: [Meeting]()),
    Building(coordinate: CLLocationCoordinate2DMake(40.430163, -86.913149), code: "PHYS", name: "Physics Building", meetings: [Meeting]()),
    Building(coordinate: CLLocationCoordinate2DMake(40.426668, -86.915111), code: "PSYC", name: "Psychological Sciences", meetings: [Meeting]()),
    Building(coordinate: CLLocationCoordinate2DMake(40.424728, -86.910568), code: "PMU", name: "Purdue Memorial Union", meetings: [Meeting]()),
    Building(coordinate: CLLocationCoordinate2DMake(40.430390, -86.916065), code: "PUSH", name: "PUSH Building", meetings: [Meeting]()),
    Building(coordinate: CLLocationCoordinate2DMake(40.425790, -86.915157), code: "REC", name: "Recitation Building", meetings: [Meeting]()),
    Building(coordinate: CLLocationCoordinate2DMake(40.427446, -86.916843), code: "LWSN", name: "Lawson Hall", meetings: [Meeting]()),
    Building(coordinate: CLLocationCoordinate2DMake(40.426461, -86.913058), code: "WTHR", name: "Wetherill Hall", meetings: [Meeting]()),
    Building(coordinate: CLLocationCoordinate2DMake(40.425057, -86.912948), code: "STEW", name: "Stewart Center", meetings: [Meeting]()),
    Building(coordinate: CLLocationCoordinate2DMake(40.427431, -86.913237), code: "WALC", name: "WALC", meetings: [Meeting]())
]

/*buildingList.append(Building(coordinate: CLLocationCoordinate2DMake(40.427555, -86.912350), code: "POTR", name: "Potter", meetings: [Meeting]()))*/


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
