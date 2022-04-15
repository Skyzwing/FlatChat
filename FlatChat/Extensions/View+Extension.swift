//
//  View+Extension.swift
//  FlatChat
//
//  Created by Surachet Yaitammasan on 15/4/22.
//

import SwiftUI

extension View {
    func onDidLoad(perform action: (() -> Void)? = nil) -> some View {
        modifier(ViewDidLoadModifier(perform: action))
    }
}
