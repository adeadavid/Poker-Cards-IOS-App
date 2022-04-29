//
//  ContentView.swift
//  FirstApp
//
//  Created by Afolabi Adegorite on 23/04/2022.
//

import SwiftUI
import UIKit

struct ContentView: View {
    @State private var playerCard = "card3"
    @State private var playerScore = 0
    @State private var cpuCard = "card4"
    @State private var cpuScore = 0
    
    var body: some View {
        
        return ZStack{
            Image("background")
            VStack{
                Spacer()
                Image("logo")
                Spacer()
                HStack{
                    Spacer()
                    Image(playerCard)
                    Spacer()
                    Image(cpuCard)
                    Spacer()
                }
                Spacer()
                Button {
                    let playerNum = generateRandNumbers()
                    playerCard = "card" + String(playerNum)

                    
                    let cpuNum = generateRandNumbers()
                    cpuCard = "card" + String(cpuNum)

                    if playerNum > cpuNum {
                        playerScore += 1
                    }else {
                        cpuScore += 1
                    }
                    
                    
                    print("Hollo World")
                } label: {
                    Image("dealbutton")
                }

                Spacer()
                HStack{
                    Spacer()
                    VStack{
                        Text("Player")
                            .padding(.bottom, 10)
                            .font(.title3)
                            .foregroundColor(Color.white)
                        Text(String(playerScore))
                             .font(.largeTitle).foregroundColor(Color.white)
                    }
                    Spacer()
                    VStack{
                        Text("CPU")
                            .padding(.bottom, 10)
                            .font(.title3)
                            .foregroundColor(Color.white)
                        Text(String(cpuScore))

                            .font(.largeTitle).foregroundColor(Color.white)
                    }
                    Spacer()
                }
                Spacer()
            }
        }
        .frame(width: 1.0)
    }
    
    func generateRandNumbers () -> Int{
        return Int.random(in: 3...14)
    }
   
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
