//
//  ChatList.swift
//  FlatChat
//
//  Created by Surachet Yaitammasan on 10/4/22.
//

import SwiftUI

struct ChatList: View {
    
    @State var object: ChatListModal.ListData?
    
    private var DateText: some View {
        if let date = object?.sendingTime.toDate() {
            return Text(date.descriptiveString())
        } else {
            return Text("wrong format!!")
        }
    }
    
    var body: some View {
        HStack {
            ImageProfile(imageUrl: object?.imageProfile)
            VStack(alignment: .leading) {
                HStack {
                    Text(object?.from ?? "")
                        .lineLimit(1)
                    
                    Spacer()
                    
                    DateText
                        .lineLimit(1)
                }
                HStack {
                    Text(object?.message ?? "not have message!")
                        .font(.body)
                        .foregroundColor(.gray)
                        .lineLimit(2)
                }
            }
        }
    }
}

struct ChatList_Previews: PreviewProvider {
    static var previews: some View {
        ChatList()
            .previewLayout(.sizeThatFits)
    }
}
