//
//  ExploreView.swift
//  ThreadsTutorial
//
//  Created by Decimator on 13/04/24.
//

import SwiftUI

struct ExploreView: View {
    @State private var searchText = ""
    let url = URL(string: "https://picsum.photos/400")

    
    var body: some View {
        NavigationStack{
            ScrollView{
                LazyVStack{
                    ForEach(0 ... 10, id : \.self){ user in
                        VStack {
                            UserCell()
                        }
                        .padding(.horizontal)
                        Divider()
                    }
                }
                .padding(.vertical, 4)
                
            }
            .searchable(text: $searchText, prompt: "Search")
            .navigationTitle("Search")
        }
    }
}

#Preview {
    ExploreView()
}
