//
//  Announcement.swift
//  Blackstar
//
//  Created by EpicNav on 2022-03-20.
//

import UIKit

class Announcement {
    var announcementTitle: String
    var announcementSubtitle: String
    var announcementDescription: String
    var announcementURL: String?
    var announcementIcon: UIImage
    var announcementBanner: UIImage
    var announcementAuthors: [String]?
    var announcementGradient: [CGColor]?
    var announcementBackground: UIImage?
    
    init (title: String!, subtitle: String!, description: String!, url: String? = nil, icon: UIImage!, banner: UIImage!, authors: [String]? = nil, colors: [CGColor]? = nil, background: UIImage? = nil) {
        self.announcementTitle = title
        self.announcementSubtitle = subtitle
        self.announcementDescription = description
        self.announcementURL = url
        self.announcementIcon = icon
        self.announcementBanner = banner
        self.announcementAuthors = authors
        self.announcementGradient = colors
        self.announcementBackground = background
    }
}

let announcements = [
    Announcement(title: "[Notices] New Package", subtitle: "Eternal Winter Edition” is Here", description: "Eternal Winter Edition to help you get ready!", icon: UIImage(named: "BlackSpirit"), banner: UIImage(named: "eternal_winter"), colors: [UIColor(red: 0.387, green: 0.041, blue: 0.55, alpha: 1).cgColor, UIColor(red: 0.251, green: 0.555, blue: 0.835, alpha: 1).cgColor]),
    
    Announcement(title: "[Update] New Package", subtitle: "Eternal Winter Edition” is Here!", description: "Eternal Winter Edition to help you get ready!", icon: UIImage(named: "BlackSpirit"), banner: UIImage(named: "eternal_winter"), colors: [UIColor(red: 0.387, green: 0.255, blue: 0.737, alpha: 1).cgColor, UIColor(red: 0.883, green: 0.283, blue: 0.523, alpha: 1).cgColor, UIColor(red: 0.883, green: 0.283, blue: 0.523, alpha: 1).cgColor])
]
