//
//  CreateUsernameView.swift
//  MyGram
//
//  Created by Aimé Banda on 29/01/2024.
//

import SwiftUI

struct CreateUsernameView: View {
    @Environment(\.dismiss) var dismiss
    @EnvironmentObject var registrationViewModel: RegistrationViewModel
    
    var body: some View {
        VStack(spacing:12){
            Text("Create username")
                .font(.title2)
                .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                .padding(.top)
            
            Text("Choose your @!")
                .font(.footnote)
                .foregroundStyle(.gray)
                .multilineTextAlignment(.center)
                .padding(.horizontal, 24)
            
            TextField("Username", text: $registrationViewModel.username)
                .autocapitalization(.none)
                .autocorrectionDisabled()
                .modifier(MyGTextFieldModifier())
                .padding(.top)
            
            NavigationLink{
                CreatePasswordView()
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
            print("CreateUsernameView appeared. ViewModel: \(registrationViewModel)")
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
    CreateUsernameView()
}
