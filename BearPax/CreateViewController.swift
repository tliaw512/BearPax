//
//  CreateViewController.swift
//  BearPax
//
//  Created by Sarah Chin on 5/2/17.
//  Copyright © 2017 Tiffany Liaw. All rights reserved.
//

import UIKit
import os.log

class CreateViewController: UIViewController {

    var post: Post?
    @IBOutlet var cancel_button: UIBarButtonItem!
    @IBOutlet var save_button: UIBarButtonItem!
    @IBOutlet var post_title: UITextField!
    @IBOutlet var post_description: UITextView!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        self.navigationController?.navigationBar.isTranslucent = false
        self.navigationController?.navigationBar.barTintColor = UIColor(red:0.40, green:0.55, blue:1.00, alpha:1.0)
        self.navigationController?.navigationBar.titleTextAttributes = [NSForegroundColorAttributeName: UIColor.white]
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let button = sender as? UIBarButtonItem, button === save_button else {
            return
        }
        let title = post_title.text ?? "Untitled"
        let description = post_description.text ?? ""
        post = Post(title: title, description: description)
    }
}
