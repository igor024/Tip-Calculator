//
//  ContentView.swift
//  Tip Calculator
//
//  Created by test on 3/6/24.
//

import SwiftUI

struct ContentView: View {
    @State private var amount = 0
    @State private var percent: Double? = 0

    var body: some View {
        VStack {
            Text("Tip Calculator")
                .font(.title)
                .padding()
            HStack {
                Text("Bill: $")
                    .font(.body)
                    .padding(0)
                TextField("Enter your score", value: $amount, formatter: NumberFormatter())
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                    .font(.body)
                    .padding(0)
            }
            
        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
