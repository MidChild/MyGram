//
//  AddEmailView.swift
//  MyGram
//
//  Created by Aimé Banda on 27/01/2024.
//

import SwiftUI

struct AddEmailView: View {
    @Environment(\.dismiss) var dismiss
    @EnvironmentObject var registrationViewModel: RegistrationViewModel
    
    var body: some View {
        VStack(spacing:12){
            Text("Add your email")
                .font(.title2)
                .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                .padding(.top)
            
            Text("You'll use this email to sign in to your account")
                .font(.footnote)
                .foregroundStyle(.gray)
                .multilineTextAlignment(.center)
                .padding(.horizontal, 24)
            
            TextField("Email", text: $registrationViewModel.email)
                .autocapitalization(.none)
                .autocorrectionDisabled()
                .modifier(MyGTextFieldModifier())
                .padding(.top)
            
            NavigationLink{
                CreateUsernameView()
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
            print("AddEmailView appeared. ViewModel: \(registrationViewModel)")
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
    AddEmailView()
}
