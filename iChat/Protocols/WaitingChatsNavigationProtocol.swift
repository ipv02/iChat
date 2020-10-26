//
//  WaitingChatsNavigation.swift
//  iChat
//
//  Created by Elena Igumenova on 26.10.2020.
//  Copyright © 2020 I_P-V. All rights reserved.
//

import Foundation

protocol WaitingChatsNavigationProtocol: class {
    
    func removeWaitingChat(chat: MChat)
    
    func changeToActive(chat: MChat)
}
