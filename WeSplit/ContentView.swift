//
//  ContentView.swift
//  WeSplit
//
//  Created by Ilya on 11.06.2024.
//

import SwiftUI

struct ContentView: View {
    let students = ["Гарри", "Гермиона", "Рон"]
    @State private var chosenStudent = "Гарри"
    
    @State private var tapCount = 0
    @State private var name = ""
    
    var body: some View {
        NavigationStack {
            Form {
                Section {
                    TextField("Name here", text: $name)
                    Text("Your name is \(name)")
                }
                Section {
                    Picker("Выберите студента", selection: $chosenStudent) {
                        ForEach (students, id: \.self) {
                            Text($0)
                        }
                    }
                    Text("На данный момент выбран \(chosenStudent)")
                }
                
                Button("Tap count: \(tapCount)") {
                    self.tapCount += 1
                }
            }
            .navigationTitle("WeSplit")
        }
    }
}

#Preview {
    ContentView()
}
