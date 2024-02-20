//
//  User.swift
//  MyGram
//
//  Created by Aimé Banda on 29/01/2024.
//

import Foundation
import Firebase

struct User: Identifiable, Codable, Hashable{
    let id: String
    var username: String
    var profileImageUrl: String?
    var fullname: String?
    var bio: String?
    let email: String
    
    var isCurrentUser: Bool {
        guard let currentUid = Auth.auth().currentUser?.uid else { return false }
        return currentUid == id
    }
    
}

extension User {
    static var MOCK_USERS: [User] = [
        .init(id: NSUUID().uuidString, username: "naruto", profileImageUrl: nil, fullname: "Naruto Uzumaki", bio: "C'était mon nindô.", email: "naruto@konoha.org"),
        .init(id: NSUUID().uuidString, username: "goku", profileImageUrl: nil, fullname: "Sangoku/Kakarot", bio: "Je reviens bientôt!", email: "goku@gmail.com"),
        .init(id: NSUUID().uuidString, username: "deku", profileImageUrl: nil, fullname: "Izuku Midoriya", bio: "PLUS ULTRA!", email: "deka@ua.org"),
        .init(id: NSUUID().uuidString, username: "luffy", profileImageUrl: nil, fullname: "Monkey D. Luffy", bio: "Le Roi des pirates, ce sera moi!", email: "luffy@grandline.com")
    ]
}
