//
//  ContentView.swift
//  Counter_unit3
//
//  Created by Moez Rehman on 6/24/23.
//

import SwiftUI

struct ContentView: View {
//    @State private var counter = 0
//    @State private var message = "Some Message"
    @AppStorage("counter") var counter = 0
    @AppStorage("message") var message = ""
    
    var body: some View {
        VStack {
            Text("\(counter) cookies eaten")
            
            Button {
                print("Bye bye cookie!")
                counter += 1
                
                if counter >= 20 {
                    message = "Don't eat too many cookies ☹️"
                }
                if counter >= 30 {
                    message = "What are you doing??? 😰"
                }
                if counter >= 40 {
                    message = "Oh nooooooooooo 😱"
                }
            } label: {
                Text("Click ME to Eat Cookie")
                    .padding()
                    .background(.blue)
                    .foregroundColor(.white)
                    .cornerRadius(10)
            }
            .shadow(color: .white.opacity(0.3),
                    radius: 10, x: 0.0, y: 0.0)
            
            Text(message)
            
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
