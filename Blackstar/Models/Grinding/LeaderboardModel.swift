//
//  LeaderboardModel.swift
//  Blackstar
//
//  Created by EpicNav on 2022-04-16.
//

import Foundation
import UIKit

class Leaderboard {
    let zoneName: String
    let zoneIcon: UIImage
    
    init (zoneName: String!, zoneIcon: UIImage!) {
        self.zoneName = zoneName
        self.zoneIcon = zoneIcon
    }
}

let leaderboardData = [
    Leaderboard(zoneName: "[NEW] Erethea's Limbo", zoneIcon: UIImage(systemName: "scribble")),
    Leaderboard(zoneName: "Gyfin Rhasia Underground", zoneIcon: UIImage(systemName: "scribble")),
    Leaderboard(zoneName: "Bloody Monastery", zoneIcon: UIImage(systemName: "scribble")),
    Leaderboard(zoneName: "Orc Camp", zoneIcon: UIImage(systemName: "scribble")),
    Leaderboard(zoneName: "Tunkuta", zoneIcon: UIImage(systemName: "scribble")),
    Leaderboard(zoneName: "Olun's Valley", zoneIcon: UIImage(systemName: "scribble")),
    Leaderboard(zoneName: "Sycraia Abyssal Ruins", zoneIcon: UIImage(systemName: "scribble")),
    Leaderboard(zoneName: "Castle Ruins", zoneIcon: UIImage(systemName: "scribble")),
    Leaderboard(zoneName: "Abandoned Monastery", zoneIcon: UIImage(systemName: "scribble")),
    Leaderboard(zoneName: "Star's End", zoneIcon: UIImage(systemName: "scribble")),
    Leaderboard(zoneName: "[NEW] Jade Starlight Forest", zoneIcon: UIImage(systemName: "scribble")),
    Leaderboard(zoneName: "[NEW] Winter Tree Fossil", zoneIcon: UIImage(systemName: "scribble")),
    Leaderboard(zoneName: "Crypt of Resting Thoughts", zoneIcon: UIImage(systemName: "scribble")),
    Leaderboard(zoneName: "Swamp Fogan Habitat", zoneIcon: UIImage(systemName: "scribble")),
    Leaderboard(zoneName: "Kratuga Ancient Ruins", zoneIcon: UIImage(systemName: "scribble")),
    Leaderboard(zoneName: "Swamp Naga Habitat", zoneIcon: UIImage(systemName: "scribble")),
    Leaderboard(zoneName: "Hystria Ruins", zoneIcon: UIImage(systemName: "scribble")),
    Leaderboard(zoneName: "Thornwood Forest", zoneIcon: UIImage(systemName: "scribble")),
    Leaderboard(zoneName: "Centaurus Herd", zoneIcon: UIImage(systemName: "scribble")),
    Leaderboard(zoneName: "Roud Sulfur Mine", zoneIcon: UIImage(systemName: "scribble")),
    Leaderboard(zoneName: "Titium Valley", zoneIcon: UIImage(systemName: "scribble")),
    Leaderboard(zoneName: "Ash Forest", zoneIcon: UIImage(systemName: "scribble")),
    Leaderboard(zoneName: "Aakman Temple", zoneIcon: UIImage(systemName: "scribble")),
    Leaderboard(zoneName: "Pila Ku Jail", zoneIcon: UIImage(systemName: "scribble")),
    Leaderboard(zoneName: "Altar Imp Habitat", zoneIcon: UIImage(systemName: "scribble")),
    Leaderboard(zoneName: "[NEW] Murrowak's Labyrinth", zoneIcon: UIImage(systemName: "scribble")),
    Leaderboard(zoneName: "Biraghi Den", zoneIcon: UIImage(systemName: "scribble")),
    Leaderboard(zoneName: "Gahaz Bandit's Lair", zoneIcon: UIImage(systemName: "scribble")),
    Leaderboard(zoneName: "Cadry Ruins", zoneIcon: UIImage(systemName: "scribble")),
    Leaderboard(zoneName: "Padix Island", zoneIcon: UIImage(systemName: "scribble")),
    Leaderboard(zoneName: "Upper Sycraia Abyssal Ruins", zoneIcon: UIImage(systemName: "scribble")),
    Leaderboard(zoneName: "Bashim Base", zoneIcon: UIImage(systemName: "scribble")),
    Leaderboard(zoneName: "Desert Naga Temple", zoneIcon: UIImage(systemName: "scribble")),
    Leaderboard(zoneName: "Gyfin Rhasia Temple", zoneIcon: UIImage(systemName: "scribble")),
    Leaderboard(zoneName: "Crescent Shrine", zoneIcon: UIImage(systemName: "scribble")),
    Leaderboard(zoneName: "Manshaum Forest", zoneIcon: UIImage(systemName: "scribble")),
    Leaderboard(zoneName: "Marie Cave", zoneIcon: UIImage(systemName: "scribble")),
    Leaderboard(zoneName: "Sherekhan Necropolis", zoneIcon: UIImage(systemName: "scribble")),
    Leaderboard(zoneName: "Blood Wolf Settlement", zoneIcon: UIImage(systemName: "scribble")),
    Leaderboard(zoneName: "Tooth Fairy Forest", zoneIcon: UIImage(systemName: "scribble")),
    Leaderboard(zoneName: "Waragon Nest", zoneIcon: UIImage(systemName: "scribble")),
    Leaderboard(zoneName: "Mirumok Ruins", zoneIcon: UIImage(systemName: "scribble")),
    Leaderboard(zoneName: "Shultz", zoneIcon: UIImage(systemName: "scribble")),
    Leaderboard(zoneName: "Protty Cave", zoneIcon: UIImage(systemName: "scribble")),
    Leaderboard(zoneName: "Basilisk Den", zoneIcon: UIImage(systemName: "scribble")),
    Leaderboard(zoneName: "Navarn Steppe", zoneIcon: UIImage(systemName: "scribble")),
    Leaderboard(zoneName: "Polly's Forest", zoneIcon: UIImage(systemName: "scribble")),
    Leaderboard(zoneName: "Fadus Habitat", zoneIcon: UIImage(systemName: "scribble")),
    Leaderboard(zoneName: "Tshira Ruins", zoneIcon: UIImage(systemName: "scribble")),
    Leaderboard(zoneName: "Lekrashan", zoneIcon: UIImage(systemName: "scribble")),
    Leaderboard(zoneName: "Crocs", zoneIcon: UIImage(systemName: "scribble"))
]
