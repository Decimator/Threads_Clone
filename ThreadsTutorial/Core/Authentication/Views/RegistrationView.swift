//
//  RegistrationView.swift
//  ThreadsTutorial
//
//  Created by Decimator on 13/04/24.
//

import SwiftUI

struct RegistrationView: View {
    @State private var email = ""
    @State private var password = ""
    @State private var fullname = ""
    @State private var username = ""
    @Environment(\.dismiss) var dismiss
    
    var body: some View {
        VStack{
            Spacer()
            Image("threads-seeklogo")
                .resizable()
                .scaledToFit()
                .frame(width: 120, height: 120, alignment: .center)
                .padding()
            
            VStack{
                TextField("Enter your email",text : $email)
                    .autocapitalization(.none)
                    .modifier(ThreadsTextFieldModifier())
                
                
                SecureField("Enter your password", text: $password)
                    .modifier(ThreadsTextFieldModifier())
                
                TextField("Enter your fullname",text : $fullname)
                    .modifier(ThreadsTextFieldModifier())
                
                TextField("Enter your username",text : $username)
                    .modifier(ThreadsTextFieldModifier())
            }
            
            Button(action: {
                
            }, label: {
                Text("Sign Up")
                    .font(.subheadline)
                    .fontWeight(.semibold)
                    .foregroundColor(.white)
                    .frame(width: 352, height: 44)
                    .background(.black)
                    .cornerRadius(8)
            })
            .padding(.vertical)
            
            Spacer()
            
            Divider()
            
            Button(action: {
                dismiss()
            }, label: {
                HStack(spacing : 3){
                    Text("Already have an account?")
                    
                    Text("Sign in")
                        .fontWeight(.semibold)
                }
                .foregroundStyle(.black)
                .font(.footnote)
            })

        }
    }
}

#Preview {
    RegistrationView()
}
