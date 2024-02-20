//
//  MyGTextFieldModifier.swift
//  MyGram
//
//  Created by Aimé Banda on 29/01/2024.
//

import Foundation
import SwiftUI

struct MyGTextFieldModifier: ViewModifier{
    func body(content: Content) -> some View {
        content
            .font(.subheadline)
            .padding(12)
            .background(Color(.systemGray6))
            .cornerRadius(10)
            .padding(.horizontal,24)
    }
}
