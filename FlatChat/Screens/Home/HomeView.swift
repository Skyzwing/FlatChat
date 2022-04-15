//
//  HomeView.swift
//  FlatChat
//
//  Created by Surachet Yaitammasan on 13/4/22.
//

import SwiftUI

struct HomeView: View {
    
    @StateObject private var observed = Observed()
    var body: some View {
        NavigationView {
            List {
                ForEach(observed.list.data ?? []) { data in
                    NavigationLink(destination: {
                        MessageView(from: data.from)
                    }) {
                        ChatList(object: data)
                    }
                }
            }.listStyle(PlainListStyle())
                .navigationTitle("FlatChat")
                .environment(\.defaultMinListRowHeight, 95)
                .onDidLoad {
                    fetchProfile()
                }
        }
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
            .previewDevice("iPhone 13 Pro Max")
    }
}

extension HomeView {
    func fetchProfile() {
        observed.fetchList {
            if let error = $0 {
                print(error.localizedDescription)
                return
            }
        }
    }
}
