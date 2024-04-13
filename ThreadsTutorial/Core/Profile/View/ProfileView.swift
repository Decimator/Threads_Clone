//
//  ProfileView.swift
//  ThreadsTutorial
//
//  Created by Decimator on 13/04/24.
//

import SwiftUI

struct ProfileView: View {
    @State private var selectedFilter : ProfileThreadFilter = .threads
    @Namespace var animation
    
    var body: some View {
        ScrollView {
            VStack {
                HStack(alignment : .top) {
                    VStack(alignment : .leading, spacing: 12) {
                        VStack(alignment: .leading, spacing : 4, content: {
                            Text("Abhinav Bhushan")
                                .font(.title)
                                .fontWeight(.semibold)
                            
                            Text("notDecimator")
                                .font(.subheadline)
                        })
                        
                        Text("Cristiano Ronaldo fan , pcmb , will study harder then ever , topper as always")
                            .font(.footnote)
                        
                        Text("2 followers")
                            .font(.caption)
                            .foregroundStyle(.gray)
                    }
                    Spacer()
                    
                    CircularProfileImageView()
                }
                
                Button{
                    
                } label:{
                    Text("Follow")
                        .font(.subheadline)
                        .fontWeight(.semibold)
                        .foregroundStyle(.white)
                        .frame(width : 352, height : 32)
                        .background(.black)
                        .cornerRadius(8)
                }
                .padding()
                
                VStack{
                    HStack{
                        ForEach(ProfileThreadFilter.allCases){ filter in
                            VStack{
                                Text(filter.title)
                                    .font(.subheadline)
                                    .fontWeight(selectedFilter == filter ? .semibold : .regular)
                                
                                if selectedFilter == filter{
                                    Rectangle()
                                        .foregroundColor(.black)
                                        .frame(width : 180, height : 1)
                                        .matchedGeometryEffect(id: "text", in: animation)
                                }else{
                                    Rectangle()
                                        .foregroundColor(.clear)
                                        .frame(width:180, height : 1)
                                }
                            }
                            .onTapGesture {
                                withAnimation(.spring) {
                                    selectedFilter = filter
                                }
                            }
                        }
                    }
                }
            }
            
        }
        .scrollIndicators(.hidden)
        .padding(.horizontal)
    }
}

#Preview {
    ProfileView()
}
