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
        // Since working with fake data, make sure to change resource whenever testing for different diseases.
        if let path = Bundle.main.path(forResource: "BACData", ofType: "json")
        {
            if let jsonData = NSData(contentsOfFile: path) {
                do {
                    let json = try JSONSerialization.jsonObject(with: jsonData as Data, options: .mutableContainers) as! [String:AnyObject]
                    for key in json.keys {
                        let personData = json[key] as! [String:AnyObject]
                        let Hour1 = Double(personData["Hour1"] as! String)!
                        let Hour2 = Double(personData["Hour2"] as! String)!
                        let Hour3 = Double(personData["Hour3"] as! String)!
                        let Hour4 = Double(personData["Hour4"] as! String)!
                        let Hour5 = Double(personData["Hour5"] as! String)!
                        let Description = String(personData["Description"] as! String)
                        dataArray.append(PeopleData(type: key, Hour1: Hour1, Hour2: Hour2, Hour3: Hour3, Hour4: Hour4, Hour5: Hour5, Description: Description!))
                    }
                } catch {
                    NSLog("Could not load Data array")
                }
                
            }
        }
        return dataArray
    }

}
