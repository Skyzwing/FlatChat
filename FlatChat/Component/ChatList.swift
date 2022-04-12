//
//  ChatList.swift
//  FlatChat
//
//  Created by Surachet Yaitammasan on 10/4/22.
//

import SwiftUI

struct ChatList: View {
    var body: some View {
        HStack {
            ImageProfile()
            VStack(alignment: .leading) {
                HStack {
                    Text("Lee ruby")
                    Spacer()
                    Text("21/08/2022")
                }
                HStack {
                    Text("This day is your birthday? Happy birthday Oat, i hope to met you soon.")
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
