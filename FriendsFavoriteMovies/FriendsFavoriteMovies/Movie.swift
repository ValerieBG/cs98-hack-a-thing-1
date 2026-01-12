//
//  Movie.swift
//  FriendsFavoriteMovies
//
//  Created by Valerie Gadapati on 1/11/26.
//

import Foundation
import SwiftData

@Model
class Movie {
    var title: String
    var releaseDate: Date


    init(title: String, releaseDate: Date) {
        self.title = title
        self.releaseDate = releaseDate
    }

    static let sampleData = [
        Movie(title: "Bugonia",
              releaseDate: Date(timeIntervalSinceReferenceDate: -402_000_000)),
        Movie(title: "Poor Things",
              releaseDate: Date(timeIntervalSinceReferenceDate: -20_000_000)),
        Movie(title: "Joy Ride",
              releaseDate: Date(timeIntervalSinceReferenceDate: 300_000_000)),
        Movie(title: "Game Night",
              releaseDate: Date(timeIntervalSinceReferenceDate: 120_000_000)),
        Movie(title: "The Materialists",
              releaseDate: Date(timeIntervalSinceReferenceDate: 550_000_000)),
        Movie(title: "Sinners",
              releaseDate: Date(timeIntervalSinceReferenceDate: -1_700_000_000)),
    ]
}
