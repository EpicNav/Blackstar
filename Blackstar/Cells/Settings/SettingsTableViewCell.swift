//
//  SettingsTableViewCell.swift
//  Blackstar
//
//  Created by EpicNav on 2022-04-16.
//

import UIKit

class SettingsTableViewCell: UITableViewCell {

    @IBOutlet weak var settingsIcon: UIImageView!
    @IBOutlet weak var settingsTitle: UILabel!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
