//
//  ContentView.swift
//  Memorize
//
//  Created by Kriti  Agarwal on 05/08/21.
//

import SwiftUI

struct ContentView: View {
    var body: some View{
        VStack {
            HStack {
                CardView(isFaceUp: true)
                CardView(isFaceUp: false)
                CardView(isFaceUp: true)
            }
            HStack {
                CardView(isFaceUp: false)
                CardView(isFaceUp: true)
                CardView(isFaceUp: false)
            }
            HStack {
                CardView(isFaceUp: true)
                CardView(isFaceUp: false)
                CardView(isFaceUp: true)
            }
            HStack {
                CardView(isFaceUp: false)
                CardView(isFaceUp: true)
                CardView(isFaceUp: false)
            }
        }
        .foregroundColor(.red)
        .padding()
    }
}

struct CardView: View {
    var isFaceUp: Bool
  
    var body : some View {
        ZStack{
            if isFaceUp {
                RoundedRectangle(cornerRadius: 25.0)
                    .fill()
                    .foregroundColor(.white)
                RoundedRectangle(cornerRadius: 25.0)
                    .stroke(lineWidth: 3.0)
                Text("✈️")
                    .font(.largeTitle)
            } else {
                RoundedRectangle(cornerRadius: 25.0)
                    .fill()
                    .foregroundColor(.red)
            }
        }
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .preferredColorScheme(.dark)
        ContentView()
            .preferredColorScheme(.light)
    }
}
