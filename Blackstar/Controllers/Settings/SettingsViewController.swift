//
//  SettingsViewController.swift
//  Blackstar
//
//  Created by EpicNav on 2022-04-15.
//

import UIKit

class SettingsViewController: UIViewController {

    @IBOutlet weak var settingsTable: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        settingsTable.delegate = self
        settingsTable.dataSource = self
        // Do any additional setup after loading the view.
    }

}

extension SettingsViewController : UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return settingsModel.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "settingsTableCell", for: indexPath) as! SettingsTableViewCell
        
        cell.settingsIcon.image = settingsModel[indexPath.row].icon
        cell.settingsTitle.text = settingsModel[indexPath.row].title
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        performSegue(withIdentifier: settingsModel[indexPath.row].segueIdentifier, sender: self)
    }
    
}
