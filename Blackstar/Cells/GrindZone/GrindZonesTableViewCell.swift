//
//  GrindZonesTableViewCell.swift
//  Blackstar
//
//  Created by EpicNav on 2022-04-16.
//

import UIKit

class GrindZonesTableViewCell: UITableViewCell {

    @IBOutlet weak var zoneName: UILabel!
    @IBOutlet weak var zoneIcon: UIImageView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
