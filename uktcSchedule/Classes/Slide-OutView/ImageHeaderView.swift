//
//  ImageHeaderCell.swift
//  uktcShedule
//
//  Created by Deyan Marinov on 8/9/14.
//  Copyright © 2015 Deyan Marinov. All rights reserved.
//

import UIKit

class ImageHeaderView : UIView {
    
    @IBOutlet weak var profileImage : UIImageView!
    @IBOutlet weak var backgroundImage : UIImageView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        self.backgroundColor = UIColor(hex: "E0E0E0")
        self.profileImage.layer.cornerRadius = self.profileImage.frame.size.height / 4
        self.profileImage.clipsToBounds = true
        self.profileImage.layer.borderWidth = 1
        self.profileImage.layer.borderColor = UIColor.whiteColor().CGColor
        self.profileImage.setRandomDownloadImage(80, height: 80)
        self.backgroundImage.setRandomDownloadImage(Int(self.frame.size.width), height: 160)
    }
}