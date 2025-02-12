  //
//  ContentView.swift
//  Memorize
//
//  Created by Javidan Nasib on 12.02.25.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        HStack{
                CardView(isFaceUp: false)
                CardView()
                CardView(isFaceUp: false)
                CardView()
        }        
            .foregroundStyle(.green)
            .padding()
    }
}


struct CardView: View {
    @State var isFaceUp = true
    
    var body: some View {
        ZStack {
            let base = Circle()
            if isFaceUp {
                base.foregroundColor(.white)
                base.strokeBorder(lineWidth: 2)
                Text("👨🏻‍💻").font(.largeTitle)
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
