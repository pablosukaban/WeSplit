//
//  ContentView.swift
//  WeSplit
//
//  Created by Ilya on 11.06.2024.
//

import SwiftUI

struct ContentView: View {
    @State private var tapCount = 0
    
    var body: some View {
        NavigationStack {
            Form {
                Section {
                    Text("Hello, world!")
                }
                
                Button("Tap count: \(tapCount)") {
                    self.tapCount += 1
                }
            }
            .navigationTitle("WeSplit")
            .navigationBarTitleDisplayMode(.inline)
        }
    }
}

#Preview {
    ContentView()
}
