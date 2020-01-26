//
//  addOptionController.swift
//  FoodFairy
//
//  Created by Sohan Zaveri on 1/25/20.
//  Copyright © 2020 Fairy Inc. All rights reserved.
//

import SwiftUI
import FirebaseDatabase

class addOptionController: UIViewController, UIPickerViewDelegate, UIPickerViewDataSource {
   
    var ref: DatabaseReference!
    private var datePicker: UIDatePicker?
@IBOutlet weak var button: UIButton!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        ref = Database.database().reference()
        
        button.setTitleColor(UIColor.white, for: UIControl.State.normal)



           button.layer.cornerRadius = 25.0
        
        datePicker = UIDatePicker()
        datePicker?.datePickerMode = .dateAndTime
        /*datePicker?.addTarget(self, action: #selector(addOptionController.dateChanged(datePicker:)), for:.valueChanged)*/
        
        let tap = UITapGestureRecognizer(target: self, action: #selector(addOptionController.viewTapped(gestureRecognizer:)))
        
        view.addGestureRecognizer(tap)
        
        Time.inputView = datePicker
    
    }
    
    @objc func viewTapped(gestureRecognizer: UITapGestureRecognizer) {
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "hh:mma MM/dd/yyyy"
        if datePicker != nil {
            Time.text = dateFormatter.string(from: datePicker!.date)
        } else {
            let currentDate = Date()
            Time.text = dateFormatter.string(from: currentDate)
        }
        view.endEditing(true)
    }
    
    /*@objc func dateChanged(datePicker: UIDatePicker) {
        
        view.endEditing(true)
    }*/
    
    @IBOutlet weak var Food: UITextField!
    
    @IBOutlet weak var Location: UIPickerView!
    
    @IBOutlet weak var RoomNumber: UITextField!
    
    @IBOutlet weak var Time: UITextField!
    
    @IBOutlet weak var Description: UITextField!
    
   
    
    
    
    let locations = ["-----Select-----", "ARMS", "BCC", "BRNG", "CL50", "CREC", "ELLT", "FORD", "FRNY", "HAMP", "HAWK", "HOVD", "KNOY", "KRAN", "KRCH", "LWSN", "MATH", "ME", "MSEE", "MTHW", "NUCL", "PHYS", "PMU", "POTR", "PSYC", "PUSH",  "RAWL", "REC", "SHRV",  "STEW", "WALC", "WILY", "WTHR", "YONG"]
    
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return locations[row]
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return locations.count
    }

var bldg = ""

func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        bldg = "\(row-1)"
    }
    
    
    
   @IBAction func Submit(_ sender: Any) {
                
        
        let food = Food.text
        let time = Time.text
        let description = Description.text
        let roomnum = RoomNumber.text
self.ref.child("Entries").childByAutoId().setValue([bldg, roomnum, food, time, description])

        
        Food.text = ""
        //Location.text = ""
        Time.text = ""
        Description.text = ""
        RoomNumber.text = ""
        
        self.dismiss(animated: true) {
            
        }
        
    }
        
}

