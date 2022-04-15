//
//  ChatView.swift
//  FlatChat
//
//  Created by Surachet Yaitammasan on 10/4/22.
//

import SwiftUI

struct MessageView: View {
    @State var from: String?
    
    var body: some View {
        VStack {
            Text("Chat \(from ?? "")")
        }
    }
}

struct MessageView_Previews: PreviewProvider {
    static var previews: some View {
        MessageView(from: "Skyzwing")
    }
}
