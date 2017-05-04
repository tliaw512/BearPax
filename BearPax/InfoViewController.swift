//
//  InfoViewController.swift
//  BearPax
//
//  Created by Sarah Chin on 5/4/17.
//  Copyright © 2017 Tiffany Liaw. All rights reserved.
//

import UIKit

class InfoViewController: UIViewController {

    @IBOutlet var title_label: UILabel!
    @IBOutlet var desc_label: UILabel!
    @IBOutlet var comment: UITextField!
    var t: String = ""
    var d: String = ""
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        title_label.text = t
        desc_label.text = d
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
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
