//
//  CreatePasswordView.swift
//  MyGram
//
//  Created by Aimé Banda on 29/01/2024.
//

import SwiftUI


struct CreatePasswordView: View {
    @State private var password = ""
    @Environment(\.dismiss) var dismiss
    @EnvironmentObject var registrationViewModel: RegistrationViewModel
     
    var body: some View {
        VStack(spacing:12){
            Text("Create a password")
                .font(.title2)
                .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                .padding(.top)
            
            Text("Your password must be at least 8 characters in length")
                .font(.footnote)
                .foregroundStyle(.gray)
                .multilineTextAlignment(.center)
                .padding(.horizontal, 24)
            
            SecureField("Password", text: $registrationViewModel.password)
                .autocapitalization(.none)
                .modifier(MyGTextFieldModifier())
                .padding(.top)
            
            NavigationLink{
                CompleteSignUpView()
                    .navigationBarBackButtonHidden()
            } label: {
                Text("Next")
                    .font(.subheadline)
                    .fontWeight(.semibold)
                    .frame(width:348,height: 44)
                    .foregroundStyle(Color(.white))
                    .background(Color(.systemBlue))
                    .clipShape(.rect(cornerRadius: 8))
            }
            .padding(.vertical)
            
            
            Spacer()
        }
        .onAppear{
            print("CreatePasswordView appeared. ViewModel: \(registrationViewModel)")
        }
        .toolbar{
            ToolbarItem(placement: .topBarLeading){
                Image(systemName: "chevron.left")
                    .imageScale(.large)
                    .onTapGesture {
                        dismiss()
                    }
            }
        }
    }
}

#Preview {
    CreatePasswordView()
}
