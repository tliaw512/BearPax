//
//  DataGenerator.swift
//  BearPax
//
//  Created by Tiffany Liaw on 5/2/17.
//  Copyright © 2017 Tiffany Liaw. All rights reserved.
//

import Foundation

class DataGenerator {
    static func getDataArray() -> [PeopleData] {
        var dataArray: [PeopleData] = []
        if let path = Bundle.main.path(forResource: "liverData", ofType: "json")
        {
            if let jsonData = NSData(contentsOfFile: path) {
                do {
                    let json = try JSONSerialization.jsonObject(with: jsonData as Data, options: .mutableContainers) as! [String:AnyObject]
                    for key in json.keys {
                        let personData = json[key] as! [String:AnyObject]
                        let BAC = Double(personData["BAC"] as! String)!
                        let AST = Double(personData["AST"] as! String)!
                        let ALT = Double(personData["ALT"] as! String)!
                        let albumin = Double(personData["Albumin"] as! String)!
                        let biliruben = Double(personData["Biliruben"] as! String)!
                        dataArray.append(PeopleData(name: key, BAC: BAC, AST: AST, ALT: ALT, albumin: albumin, biliruben: biliruben))
                    }
                } catch {
                    NSLog("Could not load Data array")
                }
                
            }
        }
        return dataArray
    }

}
