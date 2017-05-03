//
//  ForumViewController.swift
//  BearPax
//
//  Created by Sarah Chin on 5/2/17.
//  Copyright © 2017 Tiffany Liaw. All rights reserved.
//

import UIKit

class ForumViewController: UIViewController {
    
    @IBOutlet var allButton: UIButton!
    @IBOutlet var otherButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
        allButton.setTitle("All Posts", for: .normal)
        allButton.titleLabel?.font = UIFont.systemFont(ofSize: 35)
        otherButton.setTitle("Other Posts", for: .normal)
        otherButton.titleLabel?.font = UIFont.systemFont(ofSize: 35)
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func allClick(_ sender: Any) {
        allButton.isEnabled = false
        allButton.backgroundColor = UIColor.darkGray
        allButton.setTitle("Firebase database\nfunctionality\ncoming soon!", for: .normal)
        allButton.titleLabel?.textAlignment = NSTextAlignment.center
        allButton.titleLabel?.font = UIFont.systemFont(ofSize: 30)
    }

    @IBAction func otherClick(_ sender: Any) {
        otherButton.isEnabled = false
        otherButton.backgroundColor = UIColor.darkGray
        otherButton.setTitle("Firebase database\nfunctionality\ncoming soon!", for: .normal)
        otherButton.titleLabel?.textAlignment = NSTextAlignment.center
        otherButton.titleLabel?.font = UIFont.systemFont(ofSize: 30)
    }

}
