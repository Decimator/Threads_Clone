//
//  UserCell.swift
//  ThreadsTutorial
//
//  Created by Decimator on 13/04/24.
//

import SwiftUI

struct UserCell: View {
    var body: some View {
        HStack{
            CircularProfileImageView()
            VStack{
                Text("notDecimator")
                    .font(.footnote)
                    .fontWeight(.semibold)
                
                Text("Abhinav Bhushan")
                    .font(.footnote)
            }
            
            Spacer()
            
            Text("Follow")
                .font(.subheadline)
                .fontWeight(.semibold)
                .frame(width:100, height: 32)
                .overlay {
                    RoundedRectangle(cornerSize: CGSize(width: 10, height: 10))
                        .stroke(Color(.systemGray), lineWidth : 1)
                }
        }
        
    }
}

#Preview {
    UserCell()
}
