//
//  ImageProfile.swift
//  FlatChat
//
//  Created by Surachet Yaitammasan on 10/4/22.
//

import SwiftUI

struct ImageProfile: View {
    var body: some View {
        Image("lee ruby")
            .resizable()
            .frame(width: 70, height: 70)
            .clipShape(Circle())
    }
}

struct ImageProfile_Previews: PreviewProvider {
    static var previews: some View {
        ImageProfile()
            .previewLayout(.sizeThatFits)
    }
}
