//
//  FeedView.swift
//  ThreadsTutorial
//
//  Created by Decimator on 13/04/24.
//

import SwiftUI

struct FeedView: View {
    var body: some View {
        NavigationStack{
            ScrollView(showsIndicators : false){
                LazyVStack{
                    ForEach(0 ... 10, id: \.self){ thread in
                        ThreadCell()
                    }
                }
            }
            .refreshable {
                print("debug")
            }
            .navigationTitle("Threads")
            .navigationBarTitleDisplayMode(.inline)
            .toolbar{
                ToolbarItem(placement: .topBarTrailing) {
                    Button{
                        
                    } label: {
                        Image(systemName: "arrow.counterclockwise")
                            .foregroundStyle(.black)
                    }
                }
                
                
                ToolbarItem(placement : .topBarLeading){
                    Image("threads-seeklogo")
                        .resizable()
                        .scaledToFit()
                        .frame(width : 35, height: 35)
                }
            }
        }
        
    }
}

#Preview {
    
    FeedView()
}