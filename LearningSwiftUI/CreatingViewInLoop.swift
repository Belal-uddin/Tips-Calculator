//
//  CreatingViewInLoop.swift
//  LearningSwiftUI
//
//  Created by Belal on 18/3/25.
//

import SwiftUI

struct CreatingViewInLoop: View {
    let students = ["Belal", "Kamrul", "Shah Jahan"]
    
    @State private var selectedStudent = "Belal"
    var body: some View {
        
        NavigationStack
        {
            Form{
                Picker("Select Your Student", selection: $selectedStudent){
                    ForEach(students, id: \.self){
                        Text($0)
                    }
                }
            }
        }
    }
}

#Preview {
    CreatingViewInLoop()
}


//5️⃣ Picker Component
//       Picker("Select Your Student", selection: $selectedStudent) {
//Picker is a dropdown menu (or wheel picker in iOS) used to select a value.
//"Select Your Student": Title of the picker.
//selection: $selectedStudent:
//$ (Dollar Sign) means binding the selectedStudent variable to the picker.
//When a user selects a different student, selectedStudent updates automatically.

//ForEach(students, id: \.self) {
//                  Text($0)
//              }
//ForEach is a SwiftUI loop that creates multiple views dynamically.
//students is the array being looped over.
//id: \.self:
//Since students is an array of String, we tell Swift to use each string itself as a unique identifier.
