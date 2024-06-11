//
//  ContentView.swift
//  WeSplit
//
//  Created by Ilya on 11.06.2024.
//

import SwiftUI

struct ContentView: View {
    @State private var tapCount = 0
    @State private var name = ""
    
    var body: some View {
        NavigationStack {
            Form {
                Section {
                    TextField("Name here", text: $name)
                    Text("Your name is \(name)")
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
