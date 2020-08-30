//
//  StackView+Extension.swift
//  iChat
//
//  Created by Elena Igumenova on 20.08.2020.
//  Copyright © 2020 I_P-V. All rights reserved.
//

import UIKit

extension UIStackView {
    
    convenience init(arrangedSubviews: [UIView], axis: NSLayoutConstraint.Axis, spacing: CGFloat ) {
        self.init(arrangedSubviews: arrangedSubviews)
        self.axis = axis
        self.spacing = spacing
    }
}
