//
//  MarketplaceSpecificItemPriceTableViewCell.swift
//  Blackstar
//
//  Created by EpicNav on 2022-04-14.
//

import UIKit

class MarketplaceSpecificItemPriceTableViewCell: UITableViewCell {

    @IBOutlet weak var sellersCount: UILabel!
    @IBOutlet weak var itemPrice: UILabel!
    @IBOutlet weak var buyersCount: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
