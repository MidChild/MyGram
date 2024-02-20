//
//  ProfileView.swift
//  MyGram
//
//  Created by Aimé Banda on 26/01/2024.
//

import SwiftUI

struct ProfileView: View {
    let user: User
    
    // VOIR CELA
    private let imageDimension: CGFloat = (UIScreen.main.bounds.width/3) - 1
    
    
    var body: some View {
//        NavigationStack {
            ScrollView{
                // header
                ProfileHeaderView(user: user)
                // posts grid view
                
                PostGridView(user: user)
            }
//        }
    }
}

#Preview {
    ProfileView(user: User.MOCK_USERS[0])
}
