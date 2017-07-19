//
//  InspectionViewController.swift
//  Vikrela
//
//  Created by Harsh Deep Singh on 18/07/17.
//  Copyright © 2017 DISQ. All rights reserved.
//

import UIKit

class InspectionViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    @IBOutlet weak var inspectionTable: UITableView!
    let cellReuseIdentifier = "cell"
    let videos = [
        ["Android", "74"],
        ["Java", "87"],
        ["iOS", "40"],
        ["Python", "7"],
        ["PHP", "200"]
    ]
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        print("Inspection")
        // Do any additional setup after loading the view.
        inspectionTable.delegate = self
        inspectionTable.dataSource = self
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.videos.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell:InspectionCustomCell = self.inspectionTable.dequeueReusableCell(withIdentifier: cellReuseIdentifier) as! InspectionCustomCell
        
        cell.hawkerName.text = self.videos[indexPath.row][0]
        cell.hawkerAddress.text = self.videos[indexPath.row][1]
        return cell
    }

    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        print("You tapped cell number \(indexPath.row).")
    }
    
        /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
