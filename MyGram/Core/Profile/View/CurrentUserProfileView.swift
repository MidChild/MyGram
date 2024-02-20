//
//  CurrentUserProfileView.swift
//  MyGram
//
//  Created by Aimé Banda on 31/01/2024.
//

import SwiftUI

struct CurrentUserProfileView: View {

    let user: User
    
    var body: some View {
        NavigationStack {
            ScrollView{
                // header
                ProfileHeaderView(user: user)
                
                // posts grid view
                
                PostGridView(user: user)
            }
            .navigationTitle("Profile")
            .navigationBarTitleDisplayMode(.inline)
            .toolbar{
                ToolbarItem(placement: .topBarTrailing){
                    Button{
                        AuthService.shared.signOut()
                    } label: {
                        Image(systemName: "line.3.horizontal")
                    }
                }
            }
        }
    }
}

#Preview {
    CurrentUserProfileView(user: User.MOCK_USERS[0])
}
