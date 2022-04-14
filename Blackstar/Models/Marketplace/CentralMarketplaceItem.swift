//
//  CentralMarketplaceItem.swift
//  Blackstar
//
//  Created by EpicNav on 2022-04-13.
//

import Foundation
import UIKit

class CentralMarketplaceItem {
    var itemName: String
    var itemImage: UIImage?
    
    init(itemName: String!, itemImage: UIImage? = nil) {
        self.itemName = itemName
        self.itemImage = itemImage
    }
}
