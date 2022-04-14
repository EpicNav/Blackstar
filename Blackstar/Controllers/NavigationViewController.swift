//
//  NavigationViewController.swift
//  Blackstar
//
//  Created by EpicNav on 2022-03-20.
//

import UIKit

class NavigationViewController: UIViewController {

    @IBOutlet weak var navigationTable: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()

        navigationTable.delegate = self
        navigationTable.dataSource = self
        
        let indexPath = IndexPath(row: 0, section: 0)
        navigationTable.selectRow(at: indexPath, animated: true, scrollPosition: .none)
        let selectedRow = navigationTable.cellForRow(at: indexPath) as! GrindTrackerNavigationTableViewCell
        selectedRow.selectedBackgroundView?.backgroundColor = UIColor.white
        selectedRow.selectedLayerBg.backgroundColor = UIColor(named: "BlurBackground")
        
    }

}

extension NavigationViewController: UITableViewDelegate, UITableViewDataSource {
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return grindTrackerNavigationSections.count
    }
    
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        return grindTrackerNavigationSections[section].title
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return grindTrackerNavigationItems[section].count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "NavigationTableCell", for: indexPath) as! GrindTrackerNavigationTableViewCell
        
        // Updates the selection background for cell
        cell.selectedBackgroundView?.layer.cornerRadius = 20
        cell.selectedBackgroundView?.layer.cornerCurve = .continuous
        cell.selectedBackgroundView?.layer.masksToBounds = false
        
        // Add data to cell
        let navItem = grindTrackerNavigationItems[indexPath.section]
        cell.titleLabel.text = navItem[indexPath.row].title
        cell.iconImage.image = navItem[indexPath.row].icon
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let cell = tableView.cellForRow(at: indexPath) as! GrindTrackerNavigationTableViewCell
        cell.selectedBackgroundView?.backgroundColor = UIColor.white
        cell.selectedLayerBg.backgroundColor = UIColor(named: "BlurBackground")
        
        let navItem = grindTrackerNavigationItems[indexPath.section]
        
        // Closes the navigation menu
        dismiss(animated: true)
        
        switch navItem[indexPath.row].segueIdentifier {
        case "GlobalGrindTracker": NotificationCenter.default.post(name: Notification.Name("ShowGlobalGrindTracker"), object: nil)
        case "CustomPricesGrindTracker": NotificationCenter.default.post(name: Notification.Name("ShowCustomPricesGrindTracker"), object: nil)
        default: break
        }
    }
    
    func tableView(_ tableView: UITableView, didHighlightRowAt indexPath: IndexPath) {
        tableView.cellForRow(at: indexPath)?.selectedBackgroundView?.backgroundColor = UIColor.clear
    }
    
    func tableView(_ tableView: UITableView, didDeselectRowAt indexPath: IndexPath) {
        let cell = tableView.cellForRow(at: indexPath) as! GrindTrackerNavigationTableViewCell
        cell.selectedLayerBg.backgroundColor = UIColor.clear
    }
    
}
