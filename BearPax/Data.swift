//
//  Data.swift
//  BearPax
//
//  Created by Sarah Chin on 5/2/17.
//  Copyright © 2017 Tiffany Liaw. All rights reserved.
//

import Foundation

//let data: [String:Double] = ["BAC":0.33, "AST":93.0, "ALT":140.0, "Albumin":30.0, "Bilirubin":0.0]

var data: [PeopleData] = []

var posts: [Post] = []

let dot: String = "\u{2022}"

let info: [String:String] = [
    "Acute Alcoholic Hepatitis":
    "Overview:\nAcute Alcoholic Hepatitis is inflammation of the liver caused by drinking alcohol. It is most likely to occur in people who drink heavily over many years.\n\nSymptoms:\n\(dot) jaundice (yellowing of the skin and whites of the eyes)\n\(dot) loss of appetite\n\(dot) nausea and vomiting\n\(dot) abdominal tenderness\n\(dot) low-grade fever\n\(dot) fatigue and weakness\n\(dot) weight loss",
    "Acute Viral Hepatitis":
    "Overview:\nAcute viral hepatitis is inflammation of the liver caused by infection with one of the five hepatitis viruses. In most people, the inflammation begins suddenly and lasts only a few weeks.\n\nSymptoms:\n\(dot) loss of appetite\n\(dot) nausea and vomiting\n\(dot) fever\n\(dot) pain in the upper right part of the abdomen\n\(dot) jaundice (yellowing of the skin and whites of the eyes)\n\(dot) joint pains (Hepatitis B)",
    "Chronic Hepatitis\nCirrhosis":
    "Overview:\nChronic hepatitis is inflammation of the liver that lasts at least 6 months. It is usually caused by one of the hepatitis viruses. The first symptoms are usually those of cirrhosis (advanced scarring) or chronic liver disease.\n\nSymptoms:\n\(dot) enlarged spleen\n\(dot) spider angiomas (small spiderlike blood vessels visible in the skin)\n\(dot) redness of the palms\n\(dot) ascites (abdominal swelling)",
    "Chronic Hepatitis":
    "Overview:\nChronic hepatitis is inflammation of the liver that lasts at least 6 months. It is usually caused by one of the hepatitis viruses. If left untreated, it can eventually cause cirrhosis and liver damage.\n\nSymptoms:\n\(dot) vague feeling of illness\n\(dot) loss of appetite\n\(dot) fatigue and weakness\n\(dot) jaundice (yellowing of the skin and whites of the eyes) is rare",
    "Nonalcoholic Fatty Liver Disease":
    "Overview:\nNonalcoholic fatty liver disease is an umbrella term for a range of liver conditions affecting people who drink little to no alcohol. As the name implies, the main characteristic of nonalcoholic fatty liver disease is too much fat (more than 5-10%) stored in liver cells.\n\nSymptoms:\nNonalcoholic fatty liver disease usually causes no symptoms. When it does, it may include:\n\(dot) enlarged liver\n\(dot) fatigue and weakness\n\(dot) pain in the upper right part of the abdomen\n\(dot) confusion",
    "Alcoholic Fatty Liver Disease":
    "Overview:\nAlcoholic fatty liver disease is an umbrella term for a range of liver conditions caused mainly by alcoholism and heavy drinking. As the name implies, the main characteristic of alcoholic fatty liver disease is too much fat (more than 5-10%) stored in liver cells.\n\nSymptoms:\nNonalcoholic Fatty Liver Disease usually causes no symptoms. When it does, it may include:\n\(dot) enlarged liver\n\(dot) fatigue and weakness\n\(dot) pain in the upper right part of the abdomen\n\(dot) confusion",
    "Overdose":
    "Overview:\nOverdose occurs when a toxic (poisonous) amount of a drug or medicine is taken. Substances that can cause harm include alcohol, prescription and over-the-counter medications, illegal drugs and some herbal remedies.\n\nSymptoms:\n\(dot) nausea and vomiting\n\(dot) abdominal cramps\n\(dot) diarrhea\n\(dot) dizziness\n\(dot) loss of balance\n\(dot) drowsiness and confussion\n\(dot) breathing irregularities",
    "Alcohol Poisoning":
    "Overview:\nAlcohol poisoning generally results from drinking too many alcoholic beverages, especially in a short period of time. There is a high risk of alcohol poisoning when a person's BAC is over 0.25%.\n\nSymptoms:\n\(dot) confusion\n\(dot) vomiting\n\(dot) seizures\n\(dot) slow or irregular breathing\n\(dot) blue-tinged or pale skin\n\(dot) hypothermia (low body temperature)\n\(dot) unconsciousness",
    "":""]

//CREDITS
//Acute Alcoholic Hepatitis:
//http://www.mayoclinic.org/diseases-conditions/alcoholic-hepatitis/home/ovc-20163921
//Acute Viral Hepatitis:
//http://www.merckmanuals.com/home/liver-and-gallbladder-disorders/hepatitis/acute-viral-hepatitis
//Chronic Hepatitis/Cirrhosis:
//http://www.merckmanuals.com/home/liver-and-gallbladder-disorders/hepatitis/chronic-hepatitis
//Nonalcoholic Fatty Liver Disease:
//http://www.mayoclinic.org/diseases-conditions/nonalcoholic-fatty-liver-disease/home/ovc-20211638
//Alcoholic Fatty Liver Disease:
//http://www.healthline.com/health/fatty-liver?m=0#overview1
//Overdose
//https://www.betterhealth.vic.gov.au/health/healthyliving/drug-overdose
//Alcohol Poisoning
//http://www.mayoclinic.org/diseases-conditions/alcohol-poisoning/symptoms-causes/dxc-20211603
