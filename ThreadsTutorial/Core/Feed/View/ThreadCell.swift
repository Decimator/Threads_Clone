//
//  ThreadCell.swift
//  ThreadsTutorial
//
//  Created by Decimator on 13/04/24.
//

import SwiftUI

struct ThreadCell: View {
    
    let url = URL(string: "https://picsum.photos/400")
    var body: some View {
        VStack{
            HStack(alignment: .top, spacing: 12, content: {
                AsyncImage(url: url) { phase in
                            switch phase {
                            case .empty:
                                ProgressView()
                            case .success(let returnedImage):
                                returnedImage
                                    .resizable()
                                    .scaledToFill()
                                    .frame(width: 40, height: 40)
                                    .clipShape(Circle())
                                    
                            case .failure:
                                Image(systemName: "questionmark")
                                    .font(.headline)
                            default:
                                Image(systemName: "questionmark")
                                    .font(.headline)
                            }
                        }
                
                VStack{
                    HStack {
                        Text("notDecimator")
                            .font(.footnote)
                        .fontWeight(.semibold)
                        
                        Spacer()
                        
                        Text("10m")
                            .font(.caption)
                            .foregroundStyle(Color(.systemGray2))
                        
                        Button(action: {
                            
                        }
                        , label: {
                            Image(systemName: "ellipsis")
                                .foregroundStyle(Color(.darkGray))
                        })
                    }
                    Text("Venturing into the realm of imagination, where ideas dance like fireflies in the night. Each step forward feels like a discovery, a whisper of potential waiting to be unleashed. Excitement fuels the journey, turning the unknown into a canvas for creativity. #ProjectInProgress #CreativeSpark")
                        .font(.footnote)
                        .multilineTextAlignment(.leading)
                    
                    HStack(spacing : 16){
                        Button{
                            
                        } label: {
                            Image(systemName: "heart")
                        }
                        
                        Button{
                            
                        } label: {
                            Image(systemName: "bubble.right")
                        }
                        
                        Button{
                            
                        } label: {
                            Image(systemName: "arrow.rectanglepath")
                        }
                        
                        Button{
                            
                        } label: {
                            Image(systemName: "paperplane")
                        }
                        
                        Spacer()
                        
                    }
                    .foregroundStyle(.black)
                    .padding(.vertical, 8)
                }
            })
            Divider()
        }
        .padding()
    }
}

#Preview {
    ThreadCell()
}
