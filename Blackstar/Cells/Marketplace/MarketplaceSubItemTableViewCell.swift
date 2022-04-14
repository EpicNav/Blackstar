//
//  MarketplaceSubItemTableViewCell.swift
//  Blackstar
//
//  Created by EpicNav on 2022-04-13.
//

import UIKit

class MarketplaceSubItemTableViewCell: UITableViewCell {

    @IBOutlet weak var itemImage: UIImageView!
    @IBOutlet weak var itemName: UILabel!
    @IBOutlet weak var itemPrice: UILabel!
    @IBOutlet weak var itemsInStock: UILabel!
    @IBOutlet weak var recentPriceChange: UILabel!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
