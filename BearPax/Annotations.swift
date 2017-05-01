//
//  Annotations.swift
//  BearPax
//
//  Created by Tiffany Liaw on 5/1/17.
//  Copyright © 2017 Tiffany Liaw. All rights reserved.
//

import UIKit
import MapKit

class Annotations: NSObject, MKAnnotation {
    
    var coordinate: CLLocationCoordinate2D = CLLocationCoordinate2DMake(0, 0)
    var title: String!
    
    init(coordinate: CLLocationCoordinate2D, title: String) {
        self.coordinate = coordinate
        self.title = title
    }
    
    
}
