//
//  ViewController.swift
//  Vikrela
//
//  Created by Harsh Deep Singh on 05/07/17.
//  Copyright © 2017 DISQ. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var nmcID: UITextField!
    
    @IBAction func btn_proceed_pressed(_ sender: UIButton) {
        self.nmcID.resignFirstResponder()
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.view.endEditing(true)
    }
}

