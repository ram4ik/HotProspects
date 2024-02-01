//
//  ContentView.swift
//  HotProspects
//
//  Created by test on 01.02.2024.
//

import SwiftUI

struct ContentView: View {
    let users = ["Jonh", "Makr", "Benny"]
    
    @State private var selection: String?
    
    var body: some View {
        List(users, id: \.self, selection: $selection) { user in
            Text(user)
        }
        
        if let selection {
            Text("You selected \(selection)")
        }
    }
}

#Preview {
    ContentView()
}
