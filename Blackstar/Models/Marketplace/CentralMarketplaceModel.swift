//
//  CentralMarketplaceModel.swift
//  Blackstar
//
//  Created by EpicNav on 2022-04-13.
//

import Foundation
import UIKit

// This file was generated from JSON Schema using quicktype, do not modify it directly.
// To parse the JSON, add this file to your project and do:
//
//   let centralMarketplaceNavigation = try? newJSONDecoder().decode(CentralMarketplaceNavigation.self, from: jsonData)

import Foundation

// MARK: - CentralMarketplaceNavigation
class CentralMarketplaceNavigation {
    let id: Int
    let name: String
    let subCategories: [String: SubCategory]
    var bIsExpanded: Bool

    init(id: Int, name: String, subCategories: [String: SubCategory], bIsExpanded: Bool) {
        self.id = id
        self.name = name
        self.subCategories = subCategories
        self.bIsExpanded = bIsExpanded
    }
}

// MARK: - SubCategory
class SubCategory {
    let name: String

    init(name: String) {
        self.name = name
    }
}

let centralMarketplaceSubItems: [[String: SubCategory]] = [
    // Main Weapon
    ["1": SubCategory(name: "Longsword"),
     "2": SubCategory(name: "Longbow"),
     "3": SubCategory(name: "Amulet"),
     "4": SubCategory(name: "Axe"),
     "5": SubCategory(name: "Shortsword"),
     "6": SubCategory(name: "Blade"),
     "7": SubCategory(name: "Staff"),
     "8": SubCategory(name: "Kriegsmesser"),
     "9": SubCategory(name: "Gauntlet"),
     "10": SubCategory(name: "Crescent Pendulum"),
     "11": SubCategory(name: "Crossbow"),
     "12": SubCategory(name: "Florang"),
     "13": SubCategory(name: "Battle Axe"),
     "14": SubCategory(name: "Shamshir"),
     "15": SubCategory(name: "Morning Star"),
     "16": SubCategory(name: "Kyve"),
     "17": SubCategory(name: "Serenaca")],
    
    // Sub Weapon
    ["1": SubCategory(name: "Shield"),
     "2": SubCategory(name: "Dagger"),
     "3": SubCategory(name: "Talisman"),
     "4": SubCategory(name: "Ornamental Knot"),
     "5": SubCategory(name: "Trinket"),
     "6": SubCategory(name: "Horn Bow"),
     "7": SubCategory(name: "Kunai"),
     "8": SubCategory(name: "Shuriken"),
     "9": SubCategory(name: "Vambrace"),
     "10": SubCategory(name: "Noble Sword"),
     "11": SubCategory(name: "Ra'ghon"),
     "12": SubCategory(name: "Vitclari"),
     "13": SubCategory(name: "Haladie"),
     "14": SubCategory(name: "Quoratum"),
     "15": SubCategory(name: "Mareca")],
    
    // Awakening
    ["1": SubCategory(name: "Great Sword"),
     "2": SubCategory(name: "Scythe"),
     "3": SubCategory(name: "Iron Buster"),
     "4": SubCategory(name: "Kamasylven Sword"),
     "5": SubCategory(name: "Celestial Bo Staff"),
     "6": SubCategory(name: "Lancia"),
     "7": SubCategory(name: "Crescent Blade"),
     "8": SubCategory(name: "Kerispear"),
     "9": SubCategory(name: "Sura Katana"),
     "10": SubCategory(name: "Sah Chakram"),
     "11": SubCategory(name: "Aad Sphera"),
     "12": SubCategory(name: "Godr Sphera"),
     "13": SubCategory(name: "Vediant"),
     "14": SubCategory(name: "Gardbrace"),
     "15": SubCategory(name: "Cestus"),
     "16": SubCategory(name: "Crimson Glaives"),
     "17": SubCategory(name: "Greatbow"),
     "19": SubCategory(name: "Jordun"),
     "20": SubCategory(name: "Dual Glaives"),
     "21": SubCategory(name: "Sting"),
     "22": SubCategory(name: "Kibelius"),
     "23": SubCategory(name: "Patraca")],
    
     //Armor
    ["1": SubCategory(name: "Helmet"),
     "2": SubCategory(name: "Armor"),
     "3": SubCategory(name: "Gloves"),
     "4": SubCategory(name: "Shoes"),
     "5": SubCategory(name: "Functional Clothes"),
     "6": SubCategory(name: "Crafted Clothes"),
     ],

     //Accessory
    ["1": SubCategory(name: "Ring"),
     "2": SubCategory(name: "Necklace"),
     "3": SubCategory(name: "Earring"),
     "4": SubCategory(name: "Belt")],
    
      //Material
    ["1": SubCategory(name: "Ore/Gem"),
     "2": SubCategory(name: "Plants"),
     "3": SubCategory(name: "Seed/Fruit"),
     "4": SubCategory(name: "Leather"),
     "5": SubCategory(name: "Blood"),
     "6": SubCategory(name: "Meat"),
     "7": SubCategory(name: "Seafood"),
     "8": SubCategory(name: "Misc")],

     //Enhancement/Upgrade
    ["1": SubCategory(name: "Black Stone"),
     "2": SubCategory(name: "Upgrade")],
     
     //Consumables
    ["1": SubCategory(name: "Offensive Elixir"),
     "2": SubCategory(name: "Defensive Elixir"),
     "3": SubCategory(name: "Functional Elixir"),
     "4": SubCategory(name: "Food"),
     "5": SubCategory(name: "Potion"),
     "6": SubCategory(name: "Siege Items"),
     "7": SubCategory(name: "Item Parts"),
     "8": SubCategory(name: "Other Consumables")],
    
    // Life Tools
    ["1": SubCategory(name: "Lumbering Axe"),
     "2": SubCategory(name: "Fluid Collector"),
     "3": SubCategory(name: "Butcher Knife"),
     "4": SubCategory(name: "Pickaxe"),
     "5": SubCategory(name: "Hoe"),
     "6": SubCategory(name: "Tanning Knife"),
     "7": SubCategory(name: "Fishing Tools"),
     "8": SubCategory(name: "Matchlock"),
     "9": SubCategory(name: "Alchemy/Cooking"),
     "10": SubCategory(name: "Other Tools")],
    
    // Alchemy Stone
    ["1": SubCategory(name: "Destruction"),
     "2": SubCategory(name: "Protection"),
     "3": SubCategory(name: "Life"),
     "4": SubCategory(name: "Spirit Stone")],
    
    // Magic Crystal
    ["1": SubCategory(name: "Main Weapon"),
     "2": SubCategory(name: "Sub-weapon"),
     "3": SubCategory(name: "Helmet"),
     "4": SubCategory(name: "Armor"),
     "5": SubCategory(name: "Gloves"),
     "6": SubCategory(name: "Shoes"),
     "7": SubCategory(name: "Versatile"),
     "8": SubCategory(name: "Awakening Weapon")],
    
    // Pearl Items
    ["1": SubCategory(name: "Male Apparel (Set)"),
     "2": SubCategory(name: "Female Apparels (Set)"),
     "3": SubCategory(name: "Male Apparel (Individual)"),
     "4": SubCategory(name: "Female Apparel (Individual)"),
     "5": SubCategory(name: "Class-based Apparel (Set)"),
     "6": SubCategory(name: "Functional"),
     "7": SubCategory(name: "Mount"),
     "8": SubCategory(name: "Pet")],
    
    // Dye
    ["1": SubCategory(name: "Basic"),
     "2": SubCategory(name: "Olvia"),
     "3": SubCategory(name: "Velia"),
     "4": SubCategory(name: "Heidelian"),
     "5": SubCategory(name: "Keplan"),
     "6": SubCategory(name: "Calpheon"),
     "7": SubCategory(name: "Mediah"),
     "8": SubCategory(name: "Valencia")],
    
    // Mount
    ["1": SubCategory(name: "Registration"),
     "2": SubCategory(name: "Feed"),
     "3": SubCategory(name: "Champron"),
     "4": SubCategory(name: "Barding"),
     "5": SubCategory(name: "Saddle"),
     "6": SubCategory(name: "Stirrups"),
     "7": SubCategory(name: "Horseshoe"),
     "9": SubCategory(name: "[Elephant] Stirrups"),
     "10": SubCategory(name: "[Elephant] Armor"),
     "11": SubCategory(name: "[Elephant] Mask"),
     "12": SubCategory(name: "[Elephant] Saddle"),
     "13": SubCategory(name: "Courser Training")],
    
    // Ship
    ["1": SubCategory(name: "Registration"),
     "2": SubCategory(name: "Cargo"),
     "3": SubCategory(name: "Prow"),
     "4": SubCategory(name: "Decoration"),
     "5": SubCategory(name: "Totem"),
     "6": SubCategory(name: "Prow Statue"),
     "7": SubCategory(name: "Plating"),
     "8": SubCategory(name: "Cannon"),
     "9": SubCategory(name: "Sail")],
    
    // Wagon
    ["1": SubCategory(name: "Registration"),
     "2": SubCategory(name: "Wheel"),
     "3": SubCategory(name: "Cover"),
     "4": SubCategory(name: "Flag"),
     "5": SubCategory(name: "Emblem"),
     "6": SubCategory(name: "Lamp")],
    
    // Furniture
    ["1": SubCategory(name: "Bed"),
     "2": SubCategory(name: "Bedside Table/Table"),
     "3": SubCategory(name: "Wardrobe/Bookshelf"),
     "4": SubCategory(name: "Sofa/Chair"),
     "5": SubCategory(name: "Chandelier"),
     "6": SubCategory(name: "Floor/Carpet"),
     "7": SubCategory(name: "Wall/Curtain"),
     "8": SubCategory(name: "Decoration"),
     "9": SubCategory(name: "Others")],
    
]

let marketplaceSections = [
    CentralMarketplaceNavigation(id: 1, name: "Main Weapon", subCategories: centralMarketplaceSubItems[0], bIsExpanded: false),
    CentralMarketplaceNavigation(id: 5, name: "Sub Weapon", subCategories: centralMarketplaceSubItems[1], bIsExpanded: false),
    CentralMarketplaceNavigation(id: 10, name: "Awakening Weapon", subCategories: centralMarketplaceSubItems[2], bIsExpanded: false),
    CentralMarketplaceNavigation(id: 15, name: "Armor", subCategories: centralMarketplaceSubItems[3], bIsExpanded: false),
    CentralMarketplaceNavigation(id: 20, name: "Accessory", subCategories: centralMarketplaceSubItems[4], bIsExpanded: false),
    CentralMarketplaceNavigation(id: 25, name: "Material", subCategories: centralMarketplaceSubItems[5], bIsExpanded: false),
    CentralMarketplaceNavigation(id: 30, name: "Enhancement / Upgrade", subCategories: centralMarketplaceSubItems[6], bIsExpanded: false),
    CentralMarketplaceNavigation(id: 35, name: "Consumables", subCategories: centralMarketplaceSubItems[7], bIsExpanded: false),
    CentralMarketplaceNavigation(id: 40, name: "Life Tools", subCategories: centralMarketplaceSubItems[8], bIsExpanded: false),
    CentralMarketplaceNavigation(id: 45, name: "Alchemy Stone", subCategories: centralMarketplaceSubItems[9], bIsExpanded: false),
    CentralMarketplaceNavigation(id: 50, name: "Magic Crystal", subCategories: centralMarketplaceSubItems[10], bIsExpanded: false),
    CentralMarketplaceNavigation(id: 55, name: "Pearl Items", subCategories: centralMarketplaceSubItems[11], bIsExpanded: false),
    CentralMarketplaceNavigation(id: 60, name: "Dye", subCategories: centralMarketplaceSubItems[12], bIsExpanded: false),
    CentralMarketplaceNavigation(id: 65, name: "Mount", subCategories: centralMarketplaceSubItems[13], bIsExpanded: false),
    CentralMarketplaceNavigation(id: 70, name: "Ship", subCategories: centralMarketplaceSubItems[14], bIsExpanded: false),
    CentralMarketplaceNavigation(id: 75, name: "Wagon", subCategories: centralMarketplaceSubItems[15], bIsExpanded: false),
    CentralMarketplaceNavigation(id: 80, name: "Furniture", subCategories: centralMarketplaceSubItems[16], bIsExpanded: false)
]
