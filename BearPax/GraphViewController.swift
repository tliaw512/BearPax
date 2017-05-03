//
//  GraphViewController.swift
//  BearPax
//
//  Created by Tiffany Liaw on 5/1/17.
//  Copyright © 2017 Tiffany Liaw. All rights reserved.
//

import UIKit
import Charts

class GraphViewController: UIViewController {

    @IBOutlet weak var dataLabel: UILabel!
    @IBOutlet weak var descriptionText: UITextView!
    @IBOutlet weak var barChart: BarChartView!
    
    
    var person: PeopleData?
    var hours: [Double]?
    var values: [Double]?

    @IBAction func saveButton(_ sender: Any) {
        UIImageWriteToSavedPhotosAlbum(barChart.getChartImage(transparent: false)!, nil, nil, nil)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        if let person = person {
            dataLabel.text = "Current Levels: " + String(person.Hour5)
            descriptionText.text = person.Description
            hours = [1, 2, 3, 4, 5]
            values = [person.Hour1, person.Hour2, person.Hour3, person.Hour4, person.Hour5]
            setChart(dataPoints: hours!, values: values!)
            navigationItem.title = person.type
        }
    }
    
    func setChart(dataPoints: [Double], values: [Double]) {
        var dataEntries: [BarChartDataEntry] = []
        
        for i in 0..<dataPoints.count {
            let dataEntry = BarChartDataEntry(x: dataPoints[i], y: values[i])
            dataEntries.append(dataEntry)
        }
        
        let chartDataSet = BarChartDataSet(values: dataEntries, label: (person?.type)! + " levels")
        var dataSets = [IChartDataSet]()
        dataSets.append(chartDataSet)
        
        let chartData = BarChartData(dataSets: dataSets)
        barChart.data = chartData
        barChart.chartDescription?.text = ""
        barChart.animate(xAxisDuration: 2.0, yAxisDuration: 2.0)
        barChart.legend.enabled = false
        chartDataSet.colors = [UIColor(red:1.00, green:0.55, blue:0.40, alpha:1.0)]
    }



    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
}
