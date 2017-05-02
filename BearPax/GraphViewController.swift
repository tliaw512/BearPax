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
    @IBOutlet weak var lineChart: LineChartView!
    
    var person: PeopleData?
    var hours: [Double]?
    var values: [Double]?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        if let person = person {
            dataLabel.text = "Current Levels: " + String(person.Hour5)
            descriptionText.text = person.Description
            hours = [1, 2, 3, 4, 5]
            values = [person.Hour1, person.Hour2, person.Hour3, person.Hour4, person.Hour5]
            setChart(dataPoints: hours!, values: values!)
        }

    }
    
    func setChart(dataPoints: [Double], values: [Double]) {
        var dataEntries: [ChartDataEntry] = []
        
        for i in 0..<dataPoints.count {
            let dataEntry = ChartDataEntry(x: values[i], y: Double(i))
            dataEntries.append(dataEntry)
        }
        
        let lineChartDataSet = LineChartDataSet(values: dataEntries, label: (person?.type)! + " levels")
        lineChartDataSet.setColor(UIColor.red)
        lineChartDataSet.setCircleColor(UIColor.red)
        lineChartDataSet.lineWidth = 2.0
        lineChartDataSet.circleRadius = 6.0
        lineChartDataSet.fillAlpha = 65 / 255.0
        lineChartDataSet.fillColor = UIColor.red
        lineChartDataSet.highlightColor = UIColor.white
        lineChartDataSet.drawCircleHoleEnabled = true
        
        var dataSets = [IChartDataSet]()
        dataSets.append(lineChartDataSet)
        let lineChartData = LineChartData(dataSets: dataSets)
        lineChart.data = lineChartData

    }


    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    


}
