//
//  ContentView.swift
//  CupcakeStoreApp
//
//  Created by Buhle Radzilani on 2024/06/21.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        
        // we are using @StateObject  because this is the only place where the order will be created in the app then
        //The rest or other views will observe the object so they Will use the @ObservedObject.
        @StateObject var order = Order()
        
        VStack {
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundColor(.accentColor)
            Text("Hello, world!")
        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
