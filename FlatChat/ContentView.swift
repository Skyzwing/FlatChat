//
//  ContentView.swift
//  FlatChat
//
//  Created by Surachet Yaitammasan on 10/4/22.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView {
            List {
                ForEach(0..<30) { _ in
                    NavigationLink(destination: {
                        ChatView()
                    }) {
                        ChatList()
                    }
                }
            }.listStyle(PlainListStyle())
                .navigationTitle("FlatChat")
                .environment(\.defaultMinListRowHeight, 95)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .previewDevice("iPhone 13 Pro Max")
    }
}
