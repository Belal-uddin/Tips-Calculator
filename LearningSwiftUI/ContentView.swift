//
//  ContentView.swift
//  LearningSwiftUI
//
//  Created by Belal on 18/3/25.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationStack {
            Form {
                Section {
                    Text("Hello")
                    Text("Hello")
                    Text("Hello")
                    Text("Hello")
                    Text("Hello")
                }
            }
            .navigationTitle("My Form") // Add a navigation title
        }
    }
}

#Preview {
    ContentView()
}
