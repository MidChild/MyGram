//
//  LoginViewModel.swift
//  MyGram
//
//  Created by Aimé Banda on 01/02/2024.
//

import Foundation

class LoginViewModel: ObservableObject{
    @Published var email = ""
    @Published var password = ""
    
    func signIn() async throws {
        try await AuthService.shared.login(withEmail: email, password: password)
    }
}
