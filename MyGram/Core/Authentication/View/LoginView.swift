//
//  LoginView.swift
//  MyGram
//
//  Created by Aimé Banda on 27/01/2024.
//

import SwiftUI

struct LoginView: View {
    @StateObject var viewModel = LoginViewModel()
//    @State private var screenWidth: CGFloat = 0
//    @State private var screenHeight: CGFloat = 0
    
    // REVOIR LA LIGNE QUI UTILISE UIScreen.main
    
    var body: some View {
//        GeometryReader{ geometry in
//            Color.clear
//                .onAppear{
//                    screenWidth = geometry.size.width
//                    screenHeight = geometry.size.height
//                }
//        }
        NavigationStack{
            VStack{
                Spacer()
                // logo image
                Image("instagram-logo")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 220, height: 100)
                
                // text fields
                
                VStack{
                    TextField("Enter your email", text: $viewModel.email)
                        .autocapitalization(.none)
                        .autocorrectionDisabled()
                        .modifier(MyGTextFieldModifier())
                    
                    SecureField("Password", text: $viewModel.password)
                        .modifier(MyGTextFieldModifier())
                }
                
                Button{
                    print("Show forgot password")
                }label: {
                    Text("Forgot password?")
                        .font(.footnote)
                        .fontWeight(.semibold)
                        .padding(.top)
                        .padding(.trailing,28)
                        .foregroundStyle(Color(.systemBlue))
                }
                .frame(maxWidth: .infinity, alignment: .trailing)
                
                Button{
                    Task{ try await viewModel.signIn() }
                }label: {
                    Text("Log In")
                        .font(.subheadline)
                        .fontWeight(.semibold)
                        .frame(width:348,height: 44)
                        .foregroundStyle(Color(.white))
                        .background(Color(.systemBlue))
                        .clipShape(.rect(cornerRadius: 8))
                }
                .padding(.vertical)
                
                HStack{
                    Rectangle()
                        .frame(width: 150, height: 0.5)
                    
                    Text("OR")
                        .font(.footnote)
                        .fontWeight(.semibold)
                    
                    Rectangle()
                        .frame(width: 150, height: 0.5)
                }
                .foregroundStyle(Color(.gray))
                
                HStack{
                    Image("facebook-logo")
                        .resizable()
                        .frame(width: 20, height: 20)
                        .saturation(5)
                        .brightness(0.1)
                        .padding(.trailing,-3)
                    Text("Continue with Facebook")
                        .font(.footnote)
                        .fontWeight(.semibold)
                        .foregroundStyle(Color(.systemBlue))
                }
                .padding(.top,8)
                
                Spacer()
                
                Divider()
                
                NavigationLink {
                    AddEmailView()
                        .navigationBarBackButtonHidden(true)
                } label: {
                    HStack{
                        Text("Don't have an account?")
                        
                        Text("Sign Up")
                            .fontWeight(.semibold)
                            .foregroundStyle(Color(.systemBlue))
                    }
                    .font(.footnote)
                }
                .padding(.vertical,16)

            }
            .frame(maxHeight: .infinity)
        }
    }
}

#Preview {
    LoginView()
}
