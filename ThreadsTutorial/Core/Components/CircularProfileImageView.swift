//
//  CircularProfileImageView.swift
//  ThreadsTutorial
//
//  Created by Decimator on 13/04/24.
//

import SwiftUI

struct CircularProfileImageView: View {
    let url = URL(string: "https://picsum.photos/400")

    var body: some View {
        Image("cristiano")
            .resizable()
            .scaledToFill()
            .frame(width : 40, height: 40)
            .clipShape(Circle())
    }
}

#Preview {
    CircularProfileImageView()
}
