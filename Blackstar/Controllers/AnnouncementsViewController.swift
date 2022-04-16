//
//  ViewController.swift
//  Blackstar
//
//  Created by EpicNav on 2022-03-18.
//

import UIKit
import FirebaseAuth

class AnnouncementsViewController: UIViewController {
    
    
    @IBOutlet weak var announcementsScrollView: UIScrollView!
    @IBOutlet weak var cardView: UIView!
    @IBOutlet weak var blurView: UIVisualEffectView!
    @IBOutlet weak var recentUpdatesCollectionView: UICollectionView!
    
    let authHelper = AuthenticationHelper()
    
    override func viewDidLoad() {
        super.viewDidLoad()
    
        recentUpdatesCollectionView.delegate = self
        recentUpdatesCollectionView.dataSource = self
        recentUpdatesCollectionView.layer.masksToBounds = false
        
        let gesture = UITapGestureRecognizer(target: self, action:  #selector (self.onClickCardView (_:)))
        self.cardView.addGestureRecognizer(gesture)
        
        announcementsScrollView.delegate = self
    }
    
    @objc func onClickCardView(_ sender:UITapGestureRecognizer){
        // performSegue(withIdentifier: "viewAnnouncementDetailSegue", sender: nil)
    }

}

extension AnnouncementsViewController : UICollectionViewDelegate, UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return announcements.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "RecentUpdatesCell", for: indexPath) as! AnnouncementsCollectionViewCell
        let announcement = announcements[indexPath.row]
        cell.titleLabel.text = announcement.announcementTitle
        cell.subtitleLabel.text = announcement.announcementSubtitle
        cell.descriptionLabel.text = announcement.announcementDescription
        cell.gradient.colors  = announcement.announcementGradient
        cell.logo.image = announcement.announcementIcon
        cell.banner.image = announcement.announcementBanner
        
        return cell
    }
    
}

extension AnnouncementsViewController: UIScrollViewDelegate {
    
    func scrollViewDidScroll(_ scrollView: UIScrollView) {
        _ = scrollView.contentSize.height
        let lastScrollYPos = scrollView.contentOffset.y
        print(lastScrollYPos)
    }
    
}
