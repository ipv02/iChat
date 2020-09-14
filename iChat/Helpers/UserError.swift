//
//  UserError.swift
//  iChat
//
//  Created by Elena Igumenova on 14.09.2020.
//  Copyright © 2020 I_P-V. All rights reserved.
//

import Foundation

enum UserError {
    case notFilled
    case photoNotExist
}

extension UserError: LocalizedError {
    var errorDescription: String? {
        switch self {
        case .notFilled:
            return NSLocalizedString("Заполните все поля", comment: "")
        case .photoNotExist:
            return NSLocalizedString("Пользователь не выбрал фотографию", comment: "")
        }
    }
}
