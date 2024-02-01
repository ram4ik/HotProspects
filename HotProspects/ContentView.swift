//
//  ContentView.swift
//  HotProspects
//
//  Created by test on 01.02.2024.
//

import SwiftUI

struct ContentView: View {
    let users = ["Jonh", "Makr", "Benny"]
    
    @State private var 
    
    var body: some View {
        List(users, id: \.self) { user in
            Text(user)
        }
    }
}

#Preview {
    ContentView()
}
