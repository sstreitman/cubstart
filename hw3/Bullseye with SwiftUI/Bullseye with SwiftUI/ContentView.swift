//
//  ContentView.swift
//  Bullseye with SwiftUI
//
//  Created by Tony Hong on 2/17/22.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack() {
                    HStack() {
                        VStack() {
                            Text("High Score")
                            Text("0")
                        }
                        .padding(.leading, 20)
                        .padding(.top, 20)
                        Spacer()
                        
                        VStack() {
                            Text("Current Level")
                            Text("1")
                        }
                        .padding(.trailing, 20)
                        .padding(.top, 20)
                    }
                    
                    Spacer()
            @State var num: Double = 50
                
            @State var toggle = false
            HStack(){
                VStack(){
                Text("Move the slider to:")
                Text("25")
                }
                
                Slider(value = num, in: 0...100)
                Button("Check", action: signIn)
                Toggle("Exact Mode?", isOn:var)
            }
                }
    }
}


