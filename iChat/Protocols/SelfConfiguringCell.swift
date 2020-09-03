//
//  SelfConfiguringCell.swift
//  iChat
//
//  Created by Elena Igumenova on 03.09.2020.
//  Copyright © 2020 I_P-V. All rights reserved.
//

import Foundation

protocol SelfConfiguringCell {
    static var reuseId: String { get }
    func configure(with value: MChat)
}
