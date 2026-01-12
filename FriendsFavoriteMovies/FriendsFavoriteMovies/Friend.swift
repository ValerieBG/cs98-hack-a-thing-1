//
//  Friend.swift
//  FriendsFavoriteMovies
//
//  Created by Valerie Gadapati on 1/11/26.
//

import Foundation
import SwiftData

@Model
class Friend {
    var name: String

    init(name: String) {
        self.name = name
    }
    
    static let sampleData = [
            Friend(name: "Mikaela"),
            Friend(name: "Maddie"),
            Friend(name: "Akshee"),
            Friend(name: "Omar"),
            Friend(name: "Anne"),
    ]
}
