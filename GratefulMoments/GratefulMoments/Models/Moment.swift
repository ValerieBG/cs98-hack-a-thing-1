//
//  Moment.swift
//  GratefulMoments
//
//  Created by Valerie Gadapati on 1/9/26.
//

import Foundation
import SwiftData
import UIKit

@Model
class Moment {
    var title: String
    var note: String
    var imageData: Data?
    var timestamp: Date

    init(title: String, note: String, imageData: Data? = nil, timestamp: Date = .now) {
        self.title = title
        self.note = note
        self.imageData = imageData
        self.timestamp = timestamp
    }

    var image: UIImage? {
        imageData.flatMap { // use flatMap to initialize a UIImage only when the data is non-optional
            UIImage(data: $0)
        }
    }
}

extension Moment {
    static let sample = sampleData[0]
    static let longTextSample = sampleData[1]
    static let imageSample = sampleData[4]

    static let sampleData = [
        Moment(
            title: "🍅🥳",
            note: "Had a delicious healthy meal!"
        ),
        Moment(
            title: "Passed the test!",
            note: "Did well on my econ exam 🙌 I’m so glad I went to office hours and reviewed the textbook.",
            imageData: UIImage(named: "Study")?.pngData() // convert images to data in PNG format, because that’s the format PhotosPicker provides
        ),
        Moment(
            title: "Down time",
            note: "So grateful for a relaxing evening with a good book after a busy week.",
            imageData: UIImage(named: "Relax")?.pngData()
        ),
        Moment(
            title: "Friends ❤️",
            note: "Spending time with my roommates this weekend"
        ),
        Moment(
            title: "Exploring the arts!",
            note: "Went to a show at the Hop with my friends!",
            imageData: UIImage(named: "Concert")?.pngData()
        )
    ]
}
