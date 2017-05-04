//
//  PostsViewController.swift
//  BearPax
//
//  Created by Sarah Chin on 5/2/17.
//  Copyright © 2017 Tiffany Liaw. All rights reserved.
//

import UIKit

class PostsViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    @IBOutlet var tableView: UITableView!
    var selectedIndexPath: IndexPath?
    var posts: [Post] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        tableView.delegate = self
        tableView.dataSource = self
        tableView.reloadData()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return posts.count
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "PostsTableViewCell", for: indexPath) as! PostsTableViewCell
        let post = posts[indexPath.row]
        cell.num_comments?.text = "\(post.comment_list.count)"
        cell.num_views?.text = "\(post.viewers)"
        cell.title_label.text = post.title
        cell.title_label.font = UIFont.boldSystemFont(ofSize: 18)
        cell.desc_label.text = post.description
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        posts[indexPath.row].viewers += 1
        self.tableView.reloadData()
        selectedIndexPath = indexPath
        performSegue(withIdentifier: "PostsToInfo", sender: self)
    }
    
    // MARK: - Actions
    @IBAction func unwindToPosts(sender: UIStoryboardSegue) {
        if let sourceViewController = sender.source as? CreateViewController, let post = sourceViewController.post {
            posts.append(post)
            self.tableView.reloadData()
        }
    }
    
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let identifier = segue.identifier {
            if identifier == "PostsToInfo" {
                if let dest = segue.destination as? InfoViewController {
                    let post = posts[(selectedIndexPath?.row)!]
                    dest.t = post.title
                    dest.d = post.description
                }
            }
        }
    }

}
