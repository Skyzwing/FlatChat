//
//  HomeView+Observable.swift
//  FlatChat
//
//  Created by Surachet Yaitammasan on 13/4/22.
//

import SwiftUI

extension HomeView {
    class Observed: ObservableObject {
        @Published var list = ChatListModal.List()
        
        func fetchList(completion: (Error?) -> ()) {
            let list = ChatListModal.List(data: [
                ChatListModal.ListData(id: UUID().uuidString, from: "IU", message: "Hello", sendingTime: "2022-04-14T12:59:00+0700", receiveTime: Date().description, imageProfile: "https://i.ibb.co/VqqB9Bk/lee-jieun.jpg"),
                ChatListModal.ListData(id: UUID().uuidString, from: "Lee Ruby", message: "I miss you.", sendingTime: "2022-04-13T12:59:00+0700", receiveTime: Date().description, imageProfile: "https://i.ibb.co/517JM1w/lee-ruby1.jpg"),
                ChatListModal.ListData(id: UUID().uuidString, from: "Ten Lee", message: "Yo!", sendingTime: "2022-04-07T12:59:00+0700", receiveTime: Date().description, imageProfile: "https://i.ibb.co/517JM1w/lee-ruby1.jpg")
            ])
            
            DispatchQueue.main.asyncAfter(deadline: .now() + 1) {
                self.list = list
            }
        }
    }
}
