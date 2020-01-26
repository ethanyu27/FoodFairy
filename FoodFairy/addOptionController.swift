//
//  addOptionController.swift
//  FoodFairy
//
//  Created by Sohan Zaveri on 1/25/20.
//  Copyright © 2020 Fairy Inc. All rights reserved.
//

import SwiftUI
import FirebaseDatabase

class addOptionController: UIViewController {
   
    var ref: DatabaseReference!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        ref = Database.database().reference()
    
    }
    
    @IBOutlet weak var Food: UITextField!
    @IBOutlet weak var Location: UITextField!
    @IBOutlet weak var Description: UITextField!
    @IBOutlet weak var Time: UITextField!
    @IBOutlet weak var RoomNumber: UITextField!
    
    
    
    @IBAction func Submit(_ sender: Any) {
        
        let food = Food.text
        let bldg = Location.text
        let time = Time.text
        let description = Description.text
        let roomnum = RoomNumber.text
        
        self.ref.child("Entries").childByAutoId().setValue([bldg, roomnum, food, time, description])
        
        Food.text = ""
        Location.text = ""
        Time.text = ""
        Description.text = ""
        RoomNumber.text = ""
        
    }
    
    
    
    
    
    
    
}

