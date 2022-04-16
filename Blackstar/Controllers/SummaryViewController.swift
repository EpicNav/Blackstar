//
//  SummaryViewController.swift
//  Blackstar
//
//  Created by EpicNav on 2022-03-20.
//

import UIKit

class SummaryViewController: UIViewController {

    @IBOutlet weak var summaryContainerView: UICollectionView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        summaryContainerView.delegate = self
        summaryContainerView.dataSource = self
        summaryContainerView.layer.masksToBounds = false
        
        NotificationCenter.default.addObserver(self, selector: #selector(showGlobalGrindTracker), name: NSNotification.Name("ShowGlobalGrindTracker"), object: nil)
        
        NotificationCenter.default.addObserver(self, selector: #selector(showCustomPricesGrindTracker), name: NSNotification.Name("ShowCustomPricesGrindTracker"), object: nil)
    }
    
    convenience init () {
        self.init(nibName: nil, bundle: nil)
    }
    
    @objc func showGlobalGrindTracker() {
        performSegue(withIdentifier: "GlobalGrindTracker", sender: nil)
    }
    
    @objc func showCustomPricesGrindTracker() {
        performSegue(withIdentifier: "CustomPricesGrindTracker", sender: nil)
    }

}

extension SummaryViewController : UICollectionViewDelegate, UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return summaryItems.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "SummaryContainerCell", for: indexPath) as! SummaryCollectionViewCell
        let summary = summaryItems[indexPath.row]
        cell.summaryTitle.text = summary.summaryTitle
        cell.summaryResult.text = summary.summaryResult
        cell.gradient.colors = summary.announcementGradient
        cell.summaryIcon.image = summary.summaryIcon
        cell.summaryGoal.progress = Float.random(min: 0.1, max: 1)
        
        return cell
    }
    
    func openNextViewController(identifier: String, fromViewController: SummaryViewController) {
        performSegue(withIdentifier: identifier, sender: self)
    }
    
}
