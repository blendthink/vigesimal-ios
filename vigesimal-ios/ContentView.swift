//
//  ContentView.swift
//  vigesimal-ios
//
//  Created by blendthink on 2021/03/08.
//

import SwiftUI
import shared

struct ContentView: View {
    var body: some View {
        let test = VigesimalConverter.init().toDecimal(vigesimal: "jjj")
        
        Text(test.toPlainString())
            .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
