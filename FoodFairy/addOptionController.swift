//
//  addOptionController.swift
//  FoodFairy
//
//  Created by Sohan Zaveri on 1/25/20.
//  Copyright © 2020 Fairy Inc. All rights reserved.
//

import SwiftUI

class addOptionController: UIViewController {
   
    override func viewDidLoad() {
        super.viewDidLoad()
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
        
        
        
    }
    
    
    
    
    
    
    
}

