//
//  ScavengerHuntAppApp.swift
//  ScavengerHuntApp
//
//  Created by Syed Fahad Rasheed on 2026-06-04.
//

import SwiftUI

@main
struct ScavengerHuntAppApp: App {
    // Shared state manager for the entire app
    @StateObject private var huntManager = HuntManager()
    var body: some Scene {
        WindowGroup {
            //starting directly home view
   HomeView()
            // Injecting manager
            .environmentObject(huntManager)
        }
    }
}
