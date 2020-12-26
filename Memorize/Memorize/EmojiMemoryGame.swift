//
//  EmojiMemoryGame.swift
//  Memorize
//
//  Created by shark on 12/22/20.
//

import SwiftUI

class EmojiMemoryGame: ObservableObject {
        @Published private var model: MemoryGame<String> =  EmojiMemoryGame.createMemoryGame()
    
    
      private static func createMemoryGame() -> MemoryGame<String> {
        let emojis = ["👻","🎃","🕷","😀","🥾","😍","🥺","🥸","👩🏼‍🚒","🧑‍🏭","🥷","🧙‍♂️","👨🏿‍🎨","🧳","👓","👘","🧶","⛑","🦀","🐀","🐇","🦥","🐈‍⬛","🐓","🍇","🍎","🎂","🍭","🥜","🍷","🎱","🚗","🚘"]
        return MemoryGame<String>(numberOfPairsOfCards: emojis.count) { pairIndex  in
            return emojis[pairIndex]
        }
    }
    
    // MARK: - Access to the Model
    
    var cards: Array<MemoryGame<String>.Card> {
         model.cards
    }
    
    
     // MARk: - Intent(s)
    
    func choose(card: MemoryGame<String>.Card) {
        model.choose(card: card)
    }
    func resetGame() {
        model = EmojiMemoryGame.createMemoryGame()
    }
}
