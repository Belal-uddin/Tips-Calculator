//
//  ReadingTextFromUser.swift
//  LearningSwiftUI
//
//  Created by Belal on 18/3/25.
//

import SwiftUI

struct ReadingTextFromUser: View {
    
    @State private var checkAmount = 0.0
    @State private var numberOfPeople = 2
    @State private var tipPercentage = 20
    @FocusState private var amountIsFocused: Bool
    let tipPercentages = [10,15,20,25,0]
    
    var totalPerPerson: Double{
        let peopleCount = Double(numberOfPeople + 2)
        let tipSelection = Double(tipPercentage)
        let tipValue = checkAmount/100 * tipSelection
        let grandTotal = checkAmount + tipValue
        let amountPerPerson = grandTotal / peopleCount
        return amountPerPerson
    }
    
    var body: some View {
        
        NavigationStack{
            
            Form{
                
                
                // section 1
                Section{
                    TextField("Amount", value: $checkAmount,format: .currency(code: Locale.current.currency?.identifier ?? "BDT"))
                        .keyboardType(.decimalPad)
                        .focused($amountIsFocused)
                    
                    Picker("Number of People: ", selection: $numberOfPeople){
                        ForEach(2..<100){
                            Text("\($0) people")
                        }
                    }
                }
                // end
                
                // section 2
                
                Section{
                    Picker("Tip Percent: ", selection: $tipPercentage){
                        ForEach(tipPercentages, id: \.self){
                            Text($0,format: .percent)
                        }
                    }
                    .pickerStyle(.segmented)
                }header: {
                    Text("How much tip do you want to leave? ")
                }
                // end
                
                
                // section 3
                Section{
                    Text(totalPerPerson,format: .currency(code: Locale.current.currency?.identifier ?? "BDT"))
                }
                
                // end
                
                
            }
            .navigationTitle("Menu cost:")
            .toolbar{
                ToolbarItemGroup(placement: .keyboard){
                    Button("Done"){
                        amountIsFocused = false
                    }
                }
            }
            
        }
    }
}

#Preview {
    ReadingTextFromUser()
}
