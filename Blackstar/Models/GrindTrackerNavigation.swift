//
//  GrindTrackerNavigationTableViewCell.swift
//  Blackstar
//
//  Created by EpicNav on 2022-03-21.
//

import UIKit

class GrindTrackerNavigation {
    var section: Int
    var title: String
    var icon: UIImage
    var segueIdentifier: String
    
    init(section: Int!, title: String!, icon: UIImage!, segueIdentifier: String!) {
        self.section = section
        self.title = title
        self.icon = icon
        self.segueIdentifier = segueIdentifier
    }
}

class GrindTrackerNavigationSections {
    var title: String
    
    init (sectionTitle: String!) {
        self.title = sectionTitle
    }
}

let grindTrackerNavigationItems = [
    [
        GrindTrackerNavigation(section: 0, title: "SUMMARY", icon: UIImage(named: "Logo React"), segueIdentifier: ""),
        GrindTrackerNavigation(section: 0, title: "GLOBAL", icon: UIImage(named: "Logo SwiftUI"), segueIdentifier: "GlobalGrindTracker"),
        GrindTrackerNavigation(section: 0, title: "CUSTOM PRICES", icon: UIImage(named: "Logo SwiftUI"), segueIdentifier: "CustomPricesGrindTracker")
    ],
    [
        GrindTrackerNavigation(section: 1, title: "SUMMARY", icon:UIImage(named: "Logo React"), segueIdentifier: "")
    ]
]

let grindTrackerNavigationSections = [
    GrindTrackerNavigationSections(sectionTitle: "Grinding"),
    GrindTrackerNavigationSections(sectionTitle: "Lifeskill")
]
