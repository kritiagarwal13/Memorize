//
//  ContentView.swift
//  Memorize
//
//  Created by Kriti  Agarwal on 05/08/21.
//

import SwiftUI

struct ContentView: View {
    
    var emojis = ["🚗", "✈️", "⛴", "🚲", "🏳️‍🌈", "✂️", "🔊", "🎀", "🌂", "🐅", "⛄️", "🧅", "🥨", "🥘", "🍰", "🥂", "🥡", "🛼", "🚴🏻‍♀️", "🧩", "🕹", "💰", "⚱️", "🦠", "🎁"]
    @State var emojiCount = 5
    
    var body: some View{
        VStack {
            LazyVGrid(columns: [GridItem(), GridItem(), GridItem()]) {
                ForEach(emojis[0..<emojiCount], id: \.self) { emoji in
                    CardView(isFaceUp: true, content: emoji)
                }
            }
            Spacer()
            HStack {
                remove
                Spacer()
                Text("Shuffle")
                Spacer()
                add
            }
            .font(.largeTitle)
            .padding(.horizontal)
            .foregroundColor(.blue)
        }
        .foregroundColor(.red)
        .padding()
    }
    
    var remove: some View {
        Button {
            if emojiCount > 1 {
                emojiCount -= 1
            }
        } label: {
            Image(systemName: "minus.circle")
        }
    }
    
    var add: some View {
        Button{
            if emojiCount < emojis.count {
                emojiCount += 1
            }
        } label: {
            Image(systemName: "plus.circle")
        }
    }
    
}

struct CardView: View {
    @State var isFaceUp: Bool
    var content: String
    var body : some View {
        ZStack{
            let shape = RoundedRectangle(cornerRadius: 25.0)
            if isFaceUp {
                shape.fill().foregroundColor(.white)
                shape.stroke(lineWidth: 3.0)
                Text(content)
                    .font(.largeTitle)
            } else {
                shape.fill().foregroundColor(.red)
            }
        }.onTapGesture(perform: {
            isFaceUp = !isFaceUp
        })
    }
}

func emojiCounterTapped() {
    print("emoji counter tapped")
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .preferredColorScheme(.dark)
        ContentView()
            .preferredColorScheme(.light)
    }
}
