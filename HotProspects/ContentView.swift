//
//  ContentView.swift
//  HotProspects
//
//  Created by test on 01.02.2024.
//

import SwiftUI

struct ContentView: View {
    @State private var output = ""
    
    var body: some View {
        Text(output)
            .task {
                await fetchReadings()
            }
    }
    
    func fetchReadings() async {
        let fetchTask = Task {
            let url = URL(string: "https://hws.dev/readings.json")!
            let (data, _) = try await URLSession.shared.data(from: url)
            let readings = try JSONDecoder().decode([Double].self, from: data)
            return "Found \(readings.count) readings"
        }
        
        let result = await fetchTask.result
        
        do {
            output = try result.get()
        } catch {
            output = "Error: \(error.localizedDescription)"
        }
    }
}

#Preview {
    ContentView()
}
