//
//  MeetingListViewController.swift
//  FoodFairy
//
//  Created by Grant Yolasan on 1/25/20.
//  Copyright © 2020 Fairy Inc. All rights reserved.
//

import UIKit

class MeetingListViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    
    @IBOutlet weak var meetingTableView: UITableView!
    
    var thisBldgMeetings: [Meeting]?

    override func viewDidLoad() {
        super.viewDidLoad()
        meetingTableView.dataSource = self
        meetingTableView.delegate = self
        // Do any additional setup after loading the view.'
        print(thisBldgMeetings!.count)
        meetingTableView.rowHeight = UITableView.automaticDimension
        meetingTableView.rowHeight = 150
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(true)
        meetingTableView.reloadData()
    }
    
//    func numberOfSections(in tableView: UITableView) -> Int {
//        return thisBldgMeetings!.count
//    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return thisBldgMeetings!.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cellIdentifier = "MeetingTableViewCell"
        let cell = tableView.dequeueReusableCell(withIdentifier: cellIdentifier, for: indexPath) as! MeetingTableViewCell
        let meeting = thisBldgMeetings?[indexPath.row]
        cell.foodLabel.text = meeting?.food
        cell.descLabel.text = meeting?.description
        cell.roomLabel.text = meeting?.room
        cell.timeLabel.text = meeting?.time
        
        return cell
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */
    

}
