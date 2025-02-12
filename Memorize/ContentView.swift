  //
//  ContentView.swift
//  Memorize
//
//  Created by Javidan Nasib on 12.02.25.
//

import SwiftUI

struct ContentView: View {
    let emojis: [String]  = ["😉", "🥰", "😳", "🙂", "😉", "🥰", "😳", "🙂"]
    
    @State var cardCount: Int = 4

    var body: some View {
        VStack{
            HStack{
                ForEach(0..<cardCount, id: \.self){
                     index in CardView(content: emojis[index])
                }
            }.foregroundStyle(.green)
            Spacer(minLength: 24)
            HStack{
                Button(action: {cardCount += 1}
                , label: {
                    Image(systemName: "plus.app.fill")
                })
                Spacer()
                Button(action:
                        {if cardCount > 1 {
                            cardCount -= 1
                        }
                }, label: {
                    Image(systemName: "minus.square")
                })
                
                
            }.imageScale(.large)
                .font(.largeTitle)
        }
            .padding()
    }
}


struct CardView: View {
    let content: String
    @State var isFaceUp = false
    
    var body: some View {
        ZStack {
            let base = RoundedRectangle(cornerRadius: 12)
            if isFaceUp {
                base.foregroundColor(.white)
                base.strokeBorder(lineWidth: 2)
                Text(content).font(.largeTitle)
            } else {
                base.fill()
            }
        }.onTapGesture {
            isFaceUp.toggle()
            print("Changed")
        }
    }
}





































#Preview {
    ContentView()
}
