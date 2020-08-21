//
//  Label+Extension.swift
//  iChat
//
//  Created by Elena Igumenova on 18.08.2020.
//  Copyright © 2020 I_P-V. All rights reserved.
//

import Foundation
import UIKit

extension UILabel {
    
    convenience init(text: String, font: UIFont? = .avenir20()) {
        self.init()
        
        self.text = text
        self.font = font
    }
}
