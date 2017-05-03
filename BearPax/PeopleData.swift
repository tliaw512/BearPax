//
//  PeopleData.swift
//  BearPax
//
//  Created by Tiffany Liaw on 5/2/17.
//  Copyright © 2017 Tiffany Liaw. All rights reserved.
//

import Foundation

class PeopleData {
    
    let type: String!
    let Hour1: Double!
    let Hour2: Double!
    let Hour3: Double!
    let Hour4: Double!
    let Hour5: Double!
    let Description: String!
    
    init(type: String, Hour1: Double, Hour2: Double, Hour3: Double, Hour4: Double, Hour5: Double, Description: String) {
        self.type = type
        self.Hour1 = Hour1
        self.Hour2 = Hour2
        self.Hour3 = Hour3
        self.Hour4 = Hour4
        self.Hour5 = Hour5
        self.Description = Description
    }
}
