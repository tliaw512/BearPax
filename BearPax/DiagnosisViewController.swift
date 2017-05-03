//
//  DiagnosisViewController.swift
//  BearPax
//
//  Created by Tiffany Liaw on 4/6/17.
//  Copyright © 2017 Tiffany Liaw. All rights reserved.
//

import UIKit

class DiagnosisViewController: UIViewController {
    
    @IBOutlet var DiagnosisLabel: UILabel!
    @IBOutlet var SobrietyLabel: UILabel!
    @IBOutlet var TreatmentPlan: UITextView!
    var BAC = 0.0
    var AST = 0.0
    var ALT = 0.0
    var ALB = 0.0
    var BIL = 0.0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
        if data.count > 0 {
            BIL = data[0].Hour5
            ALT = data[1].Hour5
            ALB = data[2].Hour5
            AST = data[3].Hour5
            BAC = data[4].Hour5
        }
        DiagnosisLabel.numberOfLines = 0
        SobrietyLabel.numberOfLines = 0
        DiagnosisLabel.textAlignment = .center
        SobrietyLabel.textAlignment = .center
        DiagnosisLabel.text = getDiagnosis()
        SobrietyLabel.text = getSobriety()
        TreatmentPlan.text = getInfo()
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    func getDiagnosis() -> String {
        if data.count == 0 {
            return "No Data"
        }
        DiagnosisLabel.textColor = UIColor.red
        if BAC > 0.3 {
            return "Alcohol Poisoning"
        }
        if BIL > 5 && (ALT > AST || AST/ALT > 2) {
            return "Acute Alcoholic Hepatitis"
        }
        if AST > 500 || ALT > 500 || BIL > 5 {
            return "Acute Viral Hepatitis"
        }
        if ALB < 5 && ((AST > 60 && AST < 140)||(ALT > 70 && ALT < 200)) {
            if AST/ALT < 1 {
                return "Chronic Hepatitis\nCirrhosis"
            } else {
                return "Chronic Hepatitis"
            }
        }
        var current: String = "Healthy"
        if AST >= 140 || ALT >= 200 {
            if ALT >= AST {
                current = "Nonalcoholic Fatty Liver Disease"
            }
        }
        if AST > 300 {
            if AST >= ALT {
                current = "Alcoholic Fatty Liver Disease"
            }
        }
        if AST > 400 || (BIL > 1.5 && BIL < 5) {
            if ALT >= AST {
                if BAC < 0.2 {
                    current = "Overdose"
                } else {
                    current = "Alcohol Poisoning"
                }
            }
        }
        if current == "Healthy" {
            DiagnosisLabel.textColor = UIColor.green
        }
        return current
    }
    
    func getSobriety() -> String {
        if data.count == 0 {
            return "No Data"
        }
        var current: String = "Sober"
        SobrietyLabel.textColor = UIColor.green
        if BAC > 0.04 {
            current = "Impaired"
        }
        if BAC > 0.06 {
            current = "Drunk"
            SobrietyLabel.textColor = UIColor(red:0.80, green:0.80, blue:0.00, alpha:1.0)
        }
        if BAC > 0.16 {
            current = "Intoxicated"
        }
        if BAC > 0.25 {
            current = "Dangerous\nRisk of Alcohol Poisoning"
            SobrietyLabel.textColor = UIColor.red
        }
        if BAC > 0.4 {
            current = "Very Dangerous\nRisk of Death"
        }
        return current
    }
    
    func getInfo() -> String {
        if DiagnosisLabel.text == "Healthy" || DiagnosisLabel.text == "No Data" {
            return ""
        }
        else {
            return info[DiagnosisLabel.text!]!
        }
    }
}
