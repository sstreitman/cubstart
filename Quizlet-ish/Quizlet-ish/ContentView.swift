//
//  ContentView.swift
//  Quizlet-ish
//
//  Created by Savannah Streitman on 4/15/22.
//

import SwiftUI
import Firebase
@mainstruct quizlet_ishApp: App {
    
    init() {
        FirebaseApp.configure()
    }
    
    var body: some Scene {
        WindowGroup {
            ContentView()
        }
    }
}
struct ContentView: View {
    var body: some View {
        Text("Hello, world!")
            .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
