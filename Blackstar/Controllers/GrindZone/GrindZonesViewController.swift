//
//  GrindZonesViewController.swift
//  Blackstar
//
//  Created by EpicNav on 2022-04-16.
//

import UIKit

class GrindZonesViewController: UIViewController {

    @IBOutlet weak var grindZonesTable: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        grindZonesTable.delegate = self
        grindZonesTable.dataSource = self
        // Do any additional setup after loading the view.
    }

}

extension GrindZonesViewController : UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return leaderboardData.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "grindZonesTableCell", for: indexPath) as! GrindZonesTableViewCell
        cell.zoneName.text = leaderboardData[indexPath.row].zoneName
        cell.zoneIcon.image = leaderboardData[indexPath.row].zoneIcon
        
        return cell
    }
}
