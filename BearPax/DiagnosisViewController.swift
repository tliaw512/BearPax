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
    var BAC = data["BAC"]
    var AST = data["AST"]
    let ALT = data["ALT"]
    let ALB = data["Albumin"]
    let BIL = data["Bilirubin"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
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
    
    
    /*
     // MARK: - Navigation
     
     // In a storyboard-based application, you will often want to do a little preparation before navigation
     override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
     // Get the new view controller using segue.destinationViewController.
     // Pass the selected object to the new view controller.
     }
     */
    func getDiagnosis() -> String {
        if BAC == -1 && AST == -1 && ALT == -1 && ALB == -1 && BIL == -1 {
            return "No Data"
        }
        DiagnosisLabel.textColor = UIColor.red
        if BAC! > 0.3 {
            return "Alcohol Poisoning"
        }
        if BIL! > 5 && (ALT! > AST! || AST!/ALT! > 2) {
            return "Acute Alcoholic Hepatitis"
        }
        if AST! > 500 || ALT! > 500 || BIL! > 5 {
            return "Acute Viral Hepatitis"
        }
        if ALB! < 5 && ((AST! > 60 && AST! < 140)||(ALT! > 70 && ALT! < 200)) {
            if AST!/ALT! < 1 {
                return "Chronic Hepatitis\nCirrhosis"
            } else {
                return "Chronic Hepatitis"
            }
        }
        var current: String = "Healthy"
        if AST! >= 140 || ALT! >= 200 {
            if ALT! >= AST! {
                current = "Nonalcoholic Fatty Liver Disease"
            }
        }
        if AST! > 300 {
            if AST! >= ALT! {
                current = "Alcoholic Fatty Liver Disease"
            }
        }
        if AST! > 400 || (BIL! > 1.5 && BIL! < 5) {
            if ALT! >= AST! {
                if BAC! < 0.2 {
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
        if BAC == -1 && AST == -1 && ALT == -1 && ALB == -1 && BIL == -1 {
            return "No Data"
        }
        var current: String = "Sober"
        SobrietyLabel.textColor = UIColor.green
        if BAC! > 0.4 {
            current = "Impaired"
        }
        if BAC! > 0.6 {
            current = "Drunk"
            SobrietyLabel.textColor = UIColor.yellow
        }
        if BAC! > 0.16 {
            current = "Intoxicated"
        }
        if BAC! > 0.25 {
            current = "Dangerous\nRisk of Alcohol Poisoning"
            SobrietyLabel.textColor = UIColor.red
        }
        if BAC! > 0.4 {
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
