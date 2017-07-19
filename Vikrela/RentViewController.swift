//
//  RentViewController.swift
//  Vikrela
//
//  Created by Harsh Deep Singh on 18/07/17.
//  Copyright © 2017 DISQ. All rights reserved.
//

import UIKit

class RentViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    @IBOutlet var rentTable: UITableView!
    let cellReuseIdentifier = "cell"

    let videos = [
        ["Android", "74"],
        ["Java", "87"],
        ["iOS", "40"],
        ["Python", "7"],
        ["PHP", "200"]
    ]
    
    let amount = "Rs. 10"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        print("Rent")
        rentTable.delegate = self
        rentTable.dataSource = self
        // Do any additional setup after loading the view.
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.videos.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell:RentCustomCell = self.rentTable.dequeueReusableCell(withIdentifier: cellReuseIdentifier) as! RentCustomCell
        
        cell.hawkerName.text = self.videos[indexPath.row][0]
        cell.hawkerAddress.text = self.videos[indexPath.row][1]
        cell.amount.text = self.amount
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
