//
//  ImageProfile.swift
//  FlatChat
//
//  Created by Surachet Yaitammasan on 10/4/22.
//

import SwiftUI

struct ImageProfile: View {
    @State var imageUrl: String? = ""
    
    var body: some View {
        AsyncImage(url: URL(string: imageUrl ?? "")) { phase in
                if let image = phase.image  {
                    image.resizable()
                } else if phase.error != nil {
                    Image(systemName: "exclamationmark.triangle").padding()
                    // the error here is "cancelled" on any view that wasn't visible at app launch
               } else {
                    ProgressView()
                }
            }
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
