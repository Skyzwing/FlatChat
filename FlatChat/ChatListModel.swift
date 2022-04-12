//
//  ChatListModel.swift
//  FlatChat
//
//  Created by Surachet Yaitammasan on 12/4/22.
//

import Foundation

struct ChatListModal {
    let id: String
    let message: String
    let timeStamp: String
    let imageProfile: String
    
    init(id: String, message: String, timeStamp: String, imageProfile: String) {
        self.id = id
        self.message = message
        self.timeStamp = timeStamp
        self.imageProfile = imageProfile
    }
}
