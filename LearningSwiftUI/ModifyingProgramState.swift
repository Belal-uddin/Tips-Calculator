//
//  ModifyingProgramState.swift
//  LearningSwiftUI
//
//  Created by Belal on 18/3/25.
//

import SwiftUI

struct ModifyingProgramState: View {
    
    @State private var tabCount = 0
    
    var body: some View {
        Text("Click the below button")
        
        Button("Click Count: \(tabCount)"){
            tabCount+=1
        }
    }
}

#Preview {
    ModifyingProgramState()
}



// Learing Outcome:
// @State allows to modify immutable things. in struct, it is not supposed to be modified, but @State allows
// 'private' keeps it in local access ragne. only accessable in the struct. Not from outside
