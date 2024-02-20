//
//  FeedView.swift
//  MyGram
//
//  Created by Aimé Banda on 27/01/2024.
//

import SwiftUI

struct FeedView: View {
    @StateObject var viewModel = FeedViewModel()
    
    var body: some View {
        NavigationStack {
            ScrollView{
                LazyVStack(spacing:24){
                    ForEach(viewModel.posts){post in
                        FeedCell(post: post)
                    }
                }
                .padding(.top, 8)
            }
            .navigationTitle("Feed")
            .toolbar{
                ToolbarItem(placement: .topBarLeading){
                    Image("instagram-logo")
                        .resizable()
                        .frame(width: 100, height: 40)
                }
                
                ToolbarItem(placement: .topBarTrailing){
                    Image(systemName: "paperplane")
                        .imageScale(.large)
                }
            }
        }
    }
}

#Preview {
    FeedView()
}
