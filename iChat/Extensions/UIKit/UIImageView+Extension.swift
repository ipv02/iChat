//
//  UIImageView+Extension.swift
//  iChat
//
//  Created by Elena Igumenova on 18.08.2020.
//  Copyright © 2020 I_P-V. All rights reserved.
//

import Foundation
import UIKit

extension UIImageView {
    convenience init(image: UIImage?, contentMode: UIView.ContentMode) {
        self.init()
        
        self.image = image
        self.contentMode = contentMode
    }
}

extension UIImageView {
    func setupColor(color: UIColor) {
        let templateImage = self.image?.withRenderingMode(.alwaysTemplate)
        self.image = templateImage
        self.tintColor = color
    }
}
