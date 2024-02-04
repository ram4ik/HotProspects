//
//  HotProspectsApp.swift
//  HotProspects
//
//  Created by test on 01.02.2024.
//

import SwiftData
import SwiftUI

@main
struct HotProspectsApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView()
        }
        .modelContainer(for: Prospect.self)
    }
}
