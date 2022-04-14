//
//  Summary.swift
//  Blackstar
//
//  Created by EpicNav on 2022-03-20.
//

import UIKit

class Summary {
    var summaryTitle: String
    var summaryResult: String
    var summaryIcon: UIImage
    var announcementGradient: [CGColor]?
    var announcementBackground: UIImage?
    
    init (title: String!, result: String!, icon: UIImage!, gradient: [CGColor]? = nil, background: UIImage? = nil) {
        self.summaryTitle = title
        self.summaryResult = result
        self.summaryIcon = icon
        self.announcementGradient = gradient
        self.announcementBackground = background
    }
}

let summaryItems = [
    Summary(title: "TOTAL SILVER EARNED", result: "23,227,195,448", icon: UIImage(named: "BlackSpirit"), gradient: [UIColor(red: 0.387, green: 0.255, blue: 0.737, alpha: 1).cgColor, UIColor(red: 0.883, green: 0.283, blue: 0.523, alpha: 1).cgColor, UIColor(red: 0.883, green: 0.283, blue: 0.523, alpha: 1).cgColor]),
    Summary(title: "TOTAL RARE DROPS", result: "76", icon: UIImage(named: "BlackSpirit"), gradient: [UIColor(red: 0.387, green: 0.041, blue: 0.55, alpha: 1).cgColor, UIColor(red: 0.251, green: 0.555, blue: 0.835, alpha: 1).cgColor]),
    Summary(title: "SILVER/H AVERAGE", result: "436,054,983", icon: UIImage(named: "BlackSpirit"), gradient: [UIColor(red: 0.387, green: 0.255, blue: 0.737, alpha: 1).cgColor, UIColor(red: 0.883, green: 0.283, blue: 0.523, alpha: 1).cgColor, UIColor(red: 0.383, green: 0.783, blue: 0.623, alpha: 1).cgColor]),
    Summary(title: "TOTAL HOURS GRINDED", result: "53H", icon: UIImage(named: "BlackSpirit"), gradient: [UIColor(red: 0.387, green: 0.041, blue: 0.55, alpha: 1).cgColor, UIColor(red: 0.251, green: 0.555, blue: 0.835, alpha: 1).cgColor])
]
