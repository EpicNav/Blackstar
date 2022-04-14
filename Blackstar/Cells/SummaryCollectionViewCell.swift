//
//  SummaryCollectionViewCell.swift
//  Blackstar
//
//  Created by EpicNav on 2022-03-20.
//

import UIKit

class SummaryCollectionViewCell: UICollectionViewCell {
    
    let gradient = CAGradientLayer()
    
    @IBOutlet weak var summaryTitle: UILabel!
    @IBOutlet weak var summaryResult: UILabel!
    @IBOutlet weak var summaryGoal: UIProgressView!
    @IBOutlet weak var overlay: UIView!
    @IBOutlet weak var summaryIcon: CustomImageView!
    
    override public func layoutSubviews() {
        super.layoutSubviews()
        super.layoutIfNeeded()
    }
    
    override public func awakeFromNib() {
        super.awakeFromNib()
        
        layer.shadowColor = UIColor(named: "Shadow")!.cgColor
        layer.shadowOpacity = 0.25
        layer.shadowOffset = CGSize(width: 0, height: 5)
        layer.shadowRadius = 10
        layer.masksToBounds = false
        layer.cornerRadius = 30
        layer.cornerCurve = .continuous
        
        gradient.startPoint = CGPoint(x: 0, y: 0)
        gradient.endPoint = CGPoint(x: 1, y: 1)
        gradient.frame = overlay.frame
        gradient.cornerCurve = .continuous
        gradient.cornerRadius = 30
        
        overlay.layer.insertSublayer(gradient, at: 0)
        overlay.layer.cornerRadius = 30
        overlay.layer.cornerCurve = .continuous
    }
    
    override public func prepareForReuse() {
        super.prepareForReuse()
    }
}
