//
//  CreateViewController.swift
//  BearPax
//
//  Created by Sarah Chin on 5/2/17.
//  Copyright © 2017 Tiffany Liaw. All rights reserved.
//

import UIKit

class CreateViewController: UIViewController {

    @IBOutlet var post_title: UITextField!
    @IBOutlet var post_description: UITextView!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func save(_ sender: Any) {
        let post: Post = Post(title: post_title.text!, description: post_description.text, viewers: 0)
        posts.append(post)
        self.navigationController?.dismiss(animated: true, completion: nil)
    }
    @IBAction func cancel(_ sender: Any) {
        self.navigationController?.dismiss(animated: true, completion: nil)
    }
    
    

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    /*
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let identifier = segue.identifier {
            if identifier == "SavePost" {
                if let dest = segue.destination as? PostsViewController {
                    let post: Post = Post()
                    posts.append(post)
                }
            }
        }
    }*/
}
