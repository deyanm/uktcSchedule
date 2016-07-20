//
//  DataTableViewCell.swift
//  uktcShedule
//
//  Created by Deyan Marinov on 10/9/15.
//  Copyright © 2015 Deyan Marinov. All rights reserved.
//

import UIKit

struct DataTableViewCellData {
    
    init(imageUrl: String, text: String) {
        self.imageUrl = imageUrl
        self.text = text
    }
    var imageUrl: String
    var text: String
}

class DataTableViewCell : BaseTableViewCell {
    
    @IBOutlet weak var dataImage: UIImageView!
    @IBOutlet weak var dataText: UILabel!
    
    override func awakeFromNib() {
        self.dataText?.font = UIFont.systemFontOfSize(22)
        self.dataText?.textColor = UIColor(hex: "FF3D3D")
    }
 
    override class func height() -> CGFloat {
        return 80
    }
    
    override func setData(data: Any?) {
        if let data = data as? DataTableViewCellData {
            self.dataImage.setRandomDownloadImage(80, height: 80)
            self.dataText.text = data.text
        }
    }
}
