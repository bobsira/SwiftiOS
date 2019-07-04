//
//  Emoji.swift
//  EmojiDictionary
//
//  Created by bobsirasira on 04/07/2019.
//  Copyright © 2019 bobsirasira. All rights reserved.
//

import Foundation

class Emoji {
    var symbol: String
    var name: String
    var description: String
    var usage: String
    
    init(symbol: String, name: String, description: String,
            usage: String) {
        self.symbol = symbol
        self.name = name
        self.description = description
        self.usage = usage
    }
}
