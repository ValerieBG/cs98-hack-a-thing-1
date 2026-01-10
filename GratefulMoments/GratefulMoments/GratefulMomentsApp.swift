//
//  GratefulMomentsApp.swift
//  GratefulMoments
//
//  Created by Valerie Gadapati on 1/9/26.
//

import SwiftUI
import SwiftData

@main
struct GratefulMomentsApp: App {
    let dataContainer = DataContainer()

    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(dataContainer)
        }
        .modelContainer(dataContainer.modelContainer)
    }
}
