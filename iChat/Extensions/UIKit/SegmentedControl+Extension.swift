//
//  SegmentedControl+Extension.swift
//  iChat
//
//  Created by Elena Igumenova on 22.08.2020.
//  Copyright © 2020 I_P-V. All rights reserved.
//

import UIKit

extension UISegmentedControl {
    
    convenience init(first: String, second: String) {
        self.init()
        self.insertSegment(withTitle: first, at: 0, animated: true)
        self.insertSegment(withTitle: second, at: 1, animated: true)
        self.selectedSegmentIndex = 0
    }
}
