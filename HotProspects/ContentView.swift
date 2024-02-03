//
//  ContentView.swift
//  HotProspects
//
//  Created by test on 01.02.2024.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        List {
            Text("Swift")
                .swipeActions() {
                    Button("Delete", systemImage: "minus.circle", role: .destructive) {
                        print("Delete")
                    }
                }
                .swipeActions(edge: .leading) {
                    Button("Pin", systemImage: "pin") {
                        print("Hi")
                    }
                    .tint(.orange)
                }
        }
    }
}

#Preview {
    ContentView()
}
