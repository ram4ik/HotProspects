//
//  ContentView.swift
//  HotProspects
//
//  Created by test on 01.02.2024.
//

import SwiftUI

struct ContentView: View {
    @State private var backgroundColor = Color.red
    var body: some View {
        VStack {
            Text("Change background Color")
                .padding()
                .background(backgroundColor)
                .contextMenu(menuItems: {
                    Button("Red", systemImage: "swift", role: .destructive) {
                        backgroundColor = .red
                    }
                    Button("Green") {
                        backgroundColor = .green
                    }
                    Button("Blur") {
                        backgroundColor = .blue
                    }
                })
        }
    }
}

#Preview {
    ContentView()
}
