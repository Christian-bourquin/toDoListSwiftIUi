//
//  ContentView.swift
//  toDoListSwiftIUi
//
//  Created by Christian Bourquin on 4/11/23.
//

import SwiftUI

struct ContentView: View {
     @State private var textFieldEnter:String = ""
    private var listings = [String]()
    private var temp = ""
    var body: some View {
        VStack {
                TextField("enter task here", text: $textFieldEnter)
            Button("enter task"){
               temp = textFieldEnter
           //     listings.append(textFieldEnter)
            }
            List {
                ForEach(0..<listings.count) { each in
                    Text(listings[each])
                }
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
