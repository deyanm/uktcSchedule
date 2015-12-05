//
//  TBItemAnimationProtocol.swift
//  uktcShedule
//
//  Created by Deyan Marinov on 10/9/15.
//  Copyright © 2015 Deyan Marinov. All rights reserved.
//

import Foundation
import UIKit

protocol TBItemAnimationProtocol {

    func playAnimation(icon : UIImageView, textLabel : UILabel)
    func deselectAnimation(icon : UIImageView, textLabel : UILabel, defaultTextColor : UIColor)
    func selectedState(icon : UIImageView, textLabel : UILabel)
}

class TBItemAnimation: NSObject, TBItemAnimationProtocol {

    @IBInspectable var duration : CGFloat = 0.5
    @IBInspectable var textSelectedColor: UIColor = UIColor.blackColor()
    @IBInspectable var iconSelectedColor: UIColor!

    func playAnimation(icon : UIImageView, textLabel : UILabel) {
    }

    func deselectAnimation(icon : UIImageView, textLabel : UILabel, defaultTextColor : UIColor) {
    }

    func selectedState(icon: UIImageView, textLabel : UILabel) {
    }
}
