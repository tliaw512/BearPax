//
//  MapViewController.swift
//  BearPax
//
//  Created by Tiffany Liaw on 4/6/17.
//  Copyright © 2017 Tiffany Liaw. All rights reserved.
//

import UIKit
import MapKit
import CoreLocation

class MapViewController: UIViewController, CLLocationManagerDelegate {

    @IBOutlet weak var mapView: MKMapView!
    @IBOutlet weak var segmentedControl: UISegmentedControl!
    
    var locationManager: CLLocationManager!
    var resultSearchController:UISearchController? = nil
    
    @IBAction func searchOnValueChanged(_ sender: Any) {
        mapView.removeAnnotations(mapView.annotations)
        searchInMap()
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Zoom in on user's location initially
        mapView?.showsUserLocation = true
        mapView.setUserTrackingMode(.follow, animated: true)
        
        // Permission to use location feature
        locationManager = CLLocationManager()
        locationManager.requestWhenInUseAuthorization()
        searchInMap()
    }
    
    func searchInMap() {
        let request = MKLocalSearchRequest()
        request.naturalLanguageQuery = segmentedControl.titleForSegment(at: segmentedControl.selectedSegmentIndex)
        
        let span = MKCoordinateSpan(latitudeDelta: 0.1, longitudeDelta: 0.1)
        request.region = MKCoordinateRegion(center: mapView.userLocation.coordinate, span: span)
        
        let search = MKLocalSearch(request: request)
        search.start { (response: MKLocalSearchResponse?, error: Error?) in
            for item in response?.mapItems as! [MKMapItem] {
                self.addPinToMapView(title: item.name!, latitude: (item.placemark.location?.coordinate.latitude)!, longitude: (item.placemark.location?.coordinate.longitude)!)
            }
            
        }
    }
    
    func addPinToMapView(title: String, latitude: CLLocationDegrees, longitude: CLLocationDegrees) {
        let location = CLLocationCoordinate2D(latitude: latitude, longitude: longitude)
        let annotation = Annotations(coordinate: location, title: title)
        
        mapView.addAnnotation(annotation)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }

}
