# BearPax #
# iOS Decal Final Project #

## Description ##

BearPax is an iOS application connecting a wearable health monitoring device to report data from the device. The purpose of this app is to allow users to track their liver health, track their BAC levels and to receive emotional/physical treatment for alcohol dependency. Data includes levels of blood alcohol content(BAC), AST/ALT enzymes, albunin and bilirubin, and this data is used to determine the user's health and determination of any liver disease. BearPax also provides a forum with a concept of Alcoholics Anonymous and a map directing users to the closest health clinics and AA meetings. 

# Part I: Data Tab #
The data tab in the app reports the most recent data from the device. Data is organized into a UITableView by the type of data (i.e. BAC, AST, ALT, Albunin, Bilirubin) and shows the most recent updates. When a specific row in the table is selected, a chart will display the histories of the data and a description of the type of data selected. The charts were created with the iOS Charts API. An option to save the chart to the user's photo library is given.  

# Part II: Diagnosis Tab #
The diagnosis tab analyzes the data to determine the health status and/or any liver disease of the user. This analysis also determines the sobriety levels of the user based on their BAC levels. Information of any disease is provided with a list of symptoms that can be associated with the disease. 

# Part III: Forum Tab #
The forum tab provides a social media aspect in a forum style. The user is given the option to interact with other users by writing posts/stories similar to Alcoholics Anonymous meetings. A Firebase SDK is used to store this data. 

# Part IV: Map Tab # 
The map tab uses iOS MapKit to allow the user to view the closest hospitals and/or Alcoholics Anoymous meetings. 
