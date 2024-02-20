//
//  CompleteSignUpView.swift
//  MyGram
//
//  Created by Aimé Banda on 29/01/2024.
//

import SwiftUI

struct CompleteSignUpView: View {
    @Environment(\.dismiss) var dismiss
    @EnvironmentObject var registrationViewModel: RegistrationViewModel
    
    var body: some View {
        
        VStack(spacing:12){
            Spacer()
            
            Text("Welcome to MyGram, \(registrationViewModel.username)")
                .font(.title2)
                .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
            
            Text("Click below to complete registration and start using MyGram")
                .font(.footnote)
                .multilineTextAlignment(.center)
                .padding(.horizontal, 24)
            
            Button{
                Task{ try await registrationViewModel.createUser() }
            } label: {
                Text("Complete Sign up")
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
            print("CompleteSignUpView appeared. ViewModel: \(registrationViewModel)")
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
    CompleteSignUpView()
}
