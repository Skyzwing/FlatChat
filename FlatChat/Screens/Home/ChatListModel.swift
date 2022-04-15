//
//  ChatListModel.swift
//  FlatChat
//
//  Created by Surachet Yaitammasan on 12/4/22.
//

import Foundation

struct ChatListModal {
    
    struct List: Codable, Equatable, Identifiable {
        var id: String = UUID().uuidString
        let data: [ListData]?
        
        init(data: [ListData]? = nil) {
            self.data = data ?? []
        }
    }
    
    struct ListData: Codable, Equatable, Identifiable {
        let id: String
        let from: String
        let message: String
        let sendingTime: String
        let receiveTime: String
        let imageProfile: String
        
        init(id: String, from: String, message: String, sendingTime: String, receiveTime: String, imageProfile: String) {
            self.id = id
            self.from = from
            self.message = message
            self.sendingTime = sendingTime
            self.receiveTime = receiveTime
            self.imageProfile = imageProfile
        }
    }
}
