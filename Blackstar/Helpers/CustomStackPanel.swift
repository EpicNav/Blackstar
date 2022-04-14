//
//  CustomStackPanel.swift
//  Blackstar
//
//  Created by EpicNav on 2022-04-14.
//

import Foundation
import UIKit

@IBDesignable
class CustomStackPanel : UIStackView {
    @IBInspectable var cornerRadius: CGFloat = 0.0 {
        didSet {
            layer.cornerRadius = cornerRadius
            layer.cornerCurve = .continuous
            layer.masksToBounds = true
        }
    }
}
