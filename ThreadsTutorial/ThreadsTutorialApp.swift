//
//  ThreadsTutorialApp.swift
//  ThreadsTutorial
//
//  Created by Decimator on 13/04/24.
//

import SwiftUI

@main
struct ThreadsTutorialApp: App {
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}
