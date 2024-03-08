//
//  ContentView.swift
//  Tip Calculator
//
//  Created by test on 3/6/24.
//

import SwiftUI

struct ContentView: View {
    @State private var amount = 0
    @State private var percent: Double = 20
    @State private var tax: Int = 8
    @State private var includeTax: Bool = false


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
            Text("Tip: \(Int(round(percent)))%")
                .font(.body)
                .padding(0)
            Slider(value: $percent, in: 10...30)
            Toggle("Include Tax", isOn: $includeTax)
            if(includeTax) {
                Stepper("Tax rate: \(tax)%", value: $tax, in: 1...15)
            }
            Button("Calculate") {
                
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
