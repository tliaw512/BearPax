//
//  MapViewController.swift
//  BearPax
//
//  Created by Tiffany Liaw on 4/6/17.
//  Copyright © 2017 Tiffany Liaw. All rights reserved.
//

import UIKit

class MapTableViewController: UIViewController {

    @IBOutlet weak var tableView: UITableView!
    var mapArray: [Map]?
    var selectedIndexPath: IndexPath?
    
    
     override func viewDidLoad() {
        super.viewDidLoad()
    //    tableView.delegate = self
      //  tableView.dataSource = self
    }
    
 /*   func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return mapArray!.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "MapTableViewCell", for: indexPath) as! MapTableViewCell
        let map: Map! = mapArray![indexPath.row]
        cell.mapCategory.text = map.name
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        selectedIndexPath = indexPath
        performSegue(withIdentifier: "SelectorToMap", sender: self)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let identifier = segue.identifier {
            if identifier == "SelectorToMap" {
                if let dest = segue.destination as? MapViewController {
                    
                }
            }
        }
    }

    */

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
  
}
