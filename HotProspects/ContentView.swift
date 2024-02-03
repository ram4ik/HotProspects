//
//  ContentView.swift
//  HotProspects
//
//  Created by test on 01.02.2024.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            Image(systemName: "bird")
                .interpolation(.none)
                .resizable()
                .scaledToFit()
                .foregroundStyle(.white)
                .background(.black)
                .mask {
                    Circle()
                }
                .padding()
            
            Text("The Bird")
                .font(.largeTitle)
                .bold()
        }
    }
}

#Preview {
    ContentView()
}
