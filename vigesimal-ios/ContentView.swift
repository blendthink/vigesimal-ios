//
//  ContentView.swift
//  vigesimal-ios
//
//  Created by blendthink on 2021/03/08.
//

import SwiftUI
import shared

struct ContentView: View {
    
    @State private var vigesimalText = ""
    @State private var decimalText = ""
    
    var body: some View {
        TextField("Enter vigesimal", text: $vigesimalText)
            .textFieldStyle(RoundedBorderTextFieldStyle())
            .padding()
        
        Button(action: {
            do {
                let decimal = try VigesimalConverter.init().toDecimal(vigesimal: vigesimalText)
                decimalText = decimal.toPlainString()
            } catch {
                decimalText = ""
            }
        }){
            Text("CONVERT")
        }.padding()
        
        Text(decimalText)
            .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
