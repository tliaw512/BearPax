//
//  PostTableViewCell.swift
//  BearPax
//
//  Created by Sarah Chin on 5/2/17.
//  Copyright © 2017 Tiffany Liaw. All rights reserved.
//

import UIKit

class PostsTableViewCell: UITableViewCell {
    
    
    @IBOutlet var title_label: UILabel!
    @IBOutlet var desc_label: UILabel!
    @IBOutlet var num_comments: UILabel!
    @IBOutlet var num_views: UILabel!
    var comments_list: [String] = []
    var view_counter: Int?
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
        
        // Configure the view for the selected state
    }
}
