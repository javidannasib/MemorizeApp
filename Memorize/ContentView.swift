  //
//  ContentView.swift
//  Memorize
//
//  Created by Javidan Nasib on 12.02.25.
//

import SwiftUI

struct ContentView: View {
    let emojis: [String]  = ["😉", "🥰", "😳", "🙂"]

    var body: some View {
        HStack{
            ForEach(emojis.indices, id: \.self){
                 index in CardView(content: emojis[index])
            }
        }
            .foregroundStyle(.green)
            .padding()
    }
}


struct CardView: View { 
    let content: String
    @State var isFaceUp = false
    
    var body: some View {
        ZStack {
            let base = Circle()
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
