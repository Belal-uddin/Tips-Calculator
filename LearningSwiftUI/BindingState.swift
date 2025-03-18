//
//  BindingState.swift
//  LearningSwiftUI
//
//  Created by Belal on 18/3/25.
//

import SwiftUI

struct BindingState: View {
    
    @State private var name = ""
    var body: some View {
        TextField("Enter Your Name", text: $name)
        Text("Your Name is \(name)")
    }
}
#Preview {
    BindingState()
}

// Dollar sign before property(name) allows two way binding.
// value read and value write
