//
//  ContentView.swift
//  warthing
//
//  Created by Fresh Prince of Bel-Air on 27/05/2022.
//

import SwiftUI

struct ContentView: View {
    
    // add @State to var
    // species that 'playerCard' property is a state card property
    // state card properties are dynamic, values can be changed
    @State private var playerNumber = Int.random(in:2...14)
    @State private var playerCard = "card"
    @State private var cpuNumber = Int.random(in:2...14)
    @State private var cpuCard = "card"
    @State private var playerScore = 0
    @State private var cpuScore = 0
    
    var body: some View {
        ZStack {
            Image("background")
                .ignoresSafeArea()
            
            VStack {
                Spacer()
                Image("logo")
                Spacer()
                HStack {
                    Spacer()
                    Image(playerCard + String(playerNumber))
                    Spacer()
                    Image(cpuCard + String(cpuNumber))
                    Spacer()
                }
                Spacer()
                Button(action: {
                    
                    // Update scores
                    if playerNumber > cpuNumber {
                        playerScore += 1
                    }
                    else if playerNumber < cpuNumber {
                        cpuScore += 1
                    }
                    
                    // Generate a random number between 2 - 14
                    playerNumber = Int.random(in: 2...14)
                    
                    cpuNumber = Int.random(in:2...14)
                    
                    
                    // player and cpu numbers have been reassigned so view will update card values manually
                    
                }, label: {
                    Image("dealbutton")
                })
                Spacer()
                HStack() {
                    Spacer()
                    VStack() {
                        Text("Player")
                            .font(.headline)
                            .foregroundColor(Color.white)
                            .padding(.bottom, 10.0)
                        Text(String(playerScore)).foregroundColor(Color.white).font(.largeTitle)
                    }
                    Spacer()
                    VStack() {
                        Text("CPU").font(.headline).foregroundColor(Color.white).padding(.bottom, 10.0)
                        Text(String(cpuScore)).foregroundColor(Color.white).font(.largeTitle)
                    }
                    Spacer()
                }
                Spacer()
            }
        }
        
       
        
        


    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
