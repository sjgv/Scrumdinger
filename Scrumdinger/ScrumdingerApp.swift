//
//  ScrumdingerApp.swift
//  Scrumdinger
//
//  Created by Fuego Nuevo on 1/29/24.
//

import SwiftUI
import SwiftData

@main
struct ScrumdingerApp: App {
    var sharedModelContainer: ModelContainer = {
        let schema = Schema([
            Item.self,
        ])
        let modelConfiguration = ModelConfiguration(schema: schema, isStoredInMemoryOnly: false)

        do {
            return try ModelContainer(for: schema, configurations: [modelConfiguration])
        } catch {
            fatalError("Could not create ModelContainer: \(error)")
        }
    }()

    var body: some Scene {
        WindowGroup {
            MeetingView()
        }
        .modelContainer(sharedModelContainer)
    }
}
