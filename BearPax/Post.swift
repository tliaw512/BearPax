//
//  Post.swift
//  BearPax
//
//  Created by Sarah Chin on 5/2/17.
//  Copyright © 2017 Tiffany Liaw. All rights reserved.
//

import Foundation
class Post {
    let title: String!
    let description: String!
    var viewers: Int!
    var comment_list: [String]!
    init(title: String, description: String) {
        self.title = title
        self.description = description
        self.viewers = 0
        self.comment_list = []
    }
    func updateView() {
        if var views = self.viewers {
            views += 1
            self.viewers = views
        }
    }
}
