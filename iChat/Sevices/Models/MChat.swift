//
//  MChat.swift
//  iChat
//
//  Created by Elena Igumenova on 05.09.2020.
//  Copyright © 2020 I_P-V. All rights reserved.
//

import UIKit

struct MChat: Hashable, Decodable {
    var username: String
    var userImageString: String
    var lastMessage: String
    var id: Int
    
    func hash(into hasher: inout Hasher) {
        hasher.combine(id)
    }
    
    static func == (lhs: MChat, rhs: MChat) -> Bool {
        return lhs.id == rhs.id
    }
}
