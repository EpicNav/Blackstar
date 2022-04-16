//
//  GlobalLeaderboardViewController.swift
//  Blackstar
//
//  Created by EpicNav on 2022-04-16.
//

import UIKit

class GlobalLeaderboardViewController: UIViewController {

    @IBOutlet weak var leaderboardTable: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        leaderboardTable.dataSource = self
        leaderboardTable.delegate = self
    }

}

extension GlobalLeaderboardViewController : UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return leaderboardData.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "leaderboardCell", for: indexPath) as! LeaderboardTableViewCell
        cell.zoneName.text = leaderboardData[indexPath.row].zoneName
        cell.zoneIcon.image = leaderboardData[indexPath.row].zoneIcon
        
        return cell
    }
    
    
}
