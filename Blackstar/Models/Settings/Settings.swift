//
//  Settings.swift
//  Blackstar
//
//  Created by EpicNav on 2022-04-16.
//

import Foundation
import UIKit

class Settings {
    let title : String
    let icon: UIImage
    // segueIdentifier field might be removed before release, as it's just a temporary solution due to shortage of time
    let segueIdentifier: String
    
    init(title: String!, icon: UIImage!, segueIdentifier: String!) {
        self.title = title
        self.icon = icon
        self.segueIdentifier = segueIdentifier
    }
}

let settingsModel = [
    Settings(title: "Notifications", icon: UIImage(systemName: "bell.badge"), segueIdentifier: "notificationsSettingsSegue"),
    // Settings(title: "Season", icon: UIImage(systemName: "bell.badge"), segueIdentifier: "seasonSettingsSegue")
]
