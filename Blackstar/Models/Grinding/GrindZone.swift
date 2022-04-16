//
//  GrindZone.swift
//  Blackstar
//
//  Created by EpicNav on 2022-04-16.
//

import Foundation
import UIKit

class GrindZone {
    let category : String
    let icon : UIImage
    let value : String
    
    init (category: String!, icon: UIImage!, value: String!) {
        self.category = category
        self.icon = icon
        self.value = value
    }
}


let grindZoneData = [
    GrindZone(category: "Total Silver Earned", icon: UIImage(systemName: ""), value: "23,489,089,577"),
    GrindZone(category: "Average Silver an Hour", icon: UIImage(systemName: ""), value: "440,971,644"),
    GrindZone(category: "Trash an Hour", icon: UIImage(systemName: ""), value: "12,183"),
    GrindZone(category: "Total Rare Drops", icon: UIImage(systemName: ""), value: "75")
]
