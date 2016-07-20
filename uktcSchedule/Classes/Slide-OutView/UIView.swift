//
//  UIView.swift
//  uktcShedule
//
//  Created by Deyan Marinov on 10/9/15.
//  Copyright © 2015 Deyan Marinov. All rights reserved.
//

import UIKit

extension UIView {
    class func loadNib<T: UIView>(viewType: T.Type) -> T {
        let className = String.className(viewType)
        return NSBundle(forClass: viewType).loadNibNamed(className, owner: nil, options: nil).first as! T
    }
    
    class func loadNib() -> Self {
        return loadNib(self)
    }
}
