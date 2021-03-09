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
    @State private var showAlert = false
    
    func convertVigesimalToDecimal() {
        do {
            let decimal = try VigesimalConverter.init().toDecimal(vigesimal: vigesimalText)
            decimalText = decimal.toPlainString()
        } catch {
            decimalText = ""
            showAlert = true
        }
    }
    
    var body: some View {
        TextField("Enter vigesimal", text: $vigesimalText)
            .textFieldStyle(RoundedBorderTextFieldStyle())
            .padding()
        
        Button("CONVERT") {
            convertVigesimalToDecimal()
        }.padding().alert(isPresented: $showAlert, content: {
            Alert(title: Text("Contains undefined characters."))
        })
        
        Text(decimalText)
            .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
