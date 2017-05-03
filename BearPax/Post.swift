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
    var viewers = 0
    init(title: String, description: String, viewers: Int) {
        self.title = title
        self.description = description
        self.viewers = viewers
    }
}
