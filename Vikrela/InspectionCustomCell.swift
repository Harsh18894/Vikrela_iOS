//
//  InspectionCustomCell.swift
//  Vikrela
//
//  Created by Harsh Deep Singh on 19/07/17.
//  Copyright © 2017 DISQ. All rights reserved.
//

import UIKit

class InspectionCustomCell: UITableViewCell {

    @IBOutlet weak var hawkerName: UILabel!
    @IBOutlet weak var hawkerAddress: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
