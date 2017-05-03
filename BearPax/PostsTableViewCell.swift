//
//  PostTableViewCell.swift
//  BearPax
//
//  Created by Sarah Chin on 5/2/17.
//  Copyright © 2017 Tiffany Liaw. All rights reserved.
//

import UIKit

class PostsTableViewCell: UITableViewCell {
    
    @IBOutlet var views: UILabel!
    @IBOutlet var comments: UILabel!
    @IBOutlet var num_comments: UILabel!
    @IBOutlet var num_views: UILabel!
    var comments_list: [String] = []
    var view_counter: Int = 0
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        comments.backgroundColor = UIColor(patternImage: #imageLiteral(resourceName: "comments"))
        views.backgroundColor = UIColor(patternImage: #imageLiteral(resourceName: "views"))
    }
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
        
        // Configure the view for the selected state
    }
}
