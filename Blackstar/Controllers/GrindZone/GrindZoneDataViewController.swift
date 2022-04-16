//
//  GrindZoneDataViewController.swift
//  Blackstar
//
//  Created by EpicNav on 2022-04-16.
//

import UIKit

class GrindZoneDataViewController: UIViewController {

    @IBOutlet weak var grindZoneDataCollection: UICollectionView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        grindZoneDataCollection.dataSource = self
        grindZoneDataCollection.delegate = self
        // Do any additional setup after loading the view.
    }

}

extension GrindZoneDataViewController : UICollectionViewDelegate, UICollectionViewDataSource {
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return grindZoneData.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "grindZoneDataCellI", for: indexPath) as! GrindZoneDataCollectionViewCell
        cell.infoIcon.image = grindZoneData[indexPath.row].icon
        cell.title.text = grindZoneData[indexPath.row].category
        cell.value.text = grindZoneData[indexPath.row].value
        
        return cell
    }
}
