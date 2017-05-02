//
//  PeopleData.swift
//  BearPax
//
//  Created by Tiffany Liaw on 5/2/17.
//  Copyright © 2017 Tiffany Liaw. All rights reserved.
//

import Foundation

class PeopleData {
    
    let name: String!
    let BAC: Double!
    let AST: Double!
    let ALT: Double!
    let albumin: Double!
    let biliruben: Double!
    
    init(name: String, BAC: Double, AST: Double, ALT: Double, albumin: Double, biliruben: Double) {
        self.name = name
        self.BAC = BAC
        self.AST = AST
        self.ALT = ALT
        self.albumin = albumin
        self.biliruben = biliruben
    }
    
}
