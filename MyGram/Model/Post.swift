//
//  Post.swift
//  MyGram
//
//  Created by Aimé Banda on 31/01/2024.
//

import Foundation
import Firebase

struct Post: Identifiable, Hashable, Codable{
    let id: String
    let ownerUid: String
    let caption: String
    var likes: Int
    let imageUrl: String
    let timestamp: Timestamp
    var user: User?
}

extension Post {
    static var MOCK_POSTS: [Post] = [
        .init(
            id: NSUUID().uuidString,
            ownerUid: NSUUID().uuidString,
            caption: "Quand j'étais petit",
            likes: 894,
            imageUrl: "naruto-1",
            timestamp: Timestamp(),
            user: User.MOCK_USERS[0]
        ),
        .init(
            id: NSUUID().uuidString,
            ownerUid: NSUUID().uuidString,
            caption: "",
            likes: 10,
            imageUrl: "goku-1",
            timestamp: Timestamp(),
            user: User.MOCK_USERS[1]
        ),
        .init(
            id: NSUUID().uuidString,
            ownerUid: NSUUID().uuidString,
            caption: "Vous savez tous qui c'est",
            likes: 201,
            imageUrl: "all-might",
            timestamp: Timestamp(),
            user: User.MOCK_USERS[2]
        ),
        .init(
            id: NSUUID().uuidString,
            ownerUid: NSUUID().uuidString,
            caption: "Ça je crois que c'était contre Pain! Nagato a vraiment eu une vie compliquée..",
            likes: 880,
            imageUrl: "naruto-ermite",
            timestamp: Timestamp(),
            user: User.MOCK_USERS[0]
        ),
        .init(
            id: NSUUID().uuidString,
            ownerUid: NSUUID().uuidString,
            caption: "Mon bon vieux bateau !",
            likes: 7,
            imageUrl: "vogue-merry",
            timestamp: Timestamp(),
            user: User.MOCK_USERS[3]
        ),
        .init(
            id: NSUUID().uuidString,
            ownerUid: NSUUID().uuidString,
            caption: "Avec mes gars façon Fortnite mdr",
            likes: 491,
            imageUrl: "naruto-fortnite",
            timestamp: Timestamp(),
            user: User.MOCK_USERS[0]
        )
    ]
}
