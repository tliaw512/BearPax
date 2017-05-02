//
//  GraphViewController.swift
//  BearPax
//
//  Created by Tiffany Liaw on 5/1/17.
//  Copyright © 2017 Tiffany Liaw. All rights reserved.
//

import UIKit

class GraphViewController: UIViewController {

    @IBOutlet weak var dataLabel: UILabel!
    @IBOutlet weak var descriptionText: UITextView!
    var person: PeopleData?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        if let person = person {
            dataLabel.text = "Current Levels: " + String(person.Hour5)
            descriptionText.text = person.Description
        }

    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    


}
