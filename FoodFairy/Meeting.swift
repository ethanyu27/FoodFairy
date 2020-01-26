//
//  Meeting.swift
//  FoodFairy
//
//  Created by Grant Yolasan on 1/25/20.
//  Copyright © 2020 Fairy Inc. All rights reserved.
//

import Foundation

struct Meeting {
    let food: String
    let description: String
    //let buildingCode: String
    let room: String
    let time: String
    
    init(food: String, desc: String, room: String, time: String/*, buildingCode: String*/) {
        self.food = food
        self.description = desc
        self.room = room
        //self.buildingCode = buildingCode
        self.time = time
    }
}
