//
//  ThreadsTextFieldModifier.swift
//  ThreadsTutorial
//
//  Created by Decimator on 13/04/24.
//

import Foundation
import SwiftUI


struct ThreadsTextFieldModifier : ViewModifier{
    func body(content : Content) -> some View{
        content
            .font(.subheadline)
            .padding(12)
            .background(Color(.systemGray6))
            .cornerRadius(10)
            .padding(.horizontal, 24)
    }
}
