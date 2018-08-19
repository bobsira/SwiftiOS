import Foundation

enum Rank: Int {
    case ace = 1
    case two, three, four, five, six, seven, eight, nine, ten
    case jack, queen, king
    func simpleDescription() -> String {
        switch self {
        case .ace:
            return "ace"
        case .jack:
            return "jack"
        case .queen:
            return "queen"
        case .king:
            return "king"
        default:
            return String(self.rawValue)
        }
    }
}


enum Suit {
    case spades, hearts, diamonds, clubs
    func simpleDescription() -> String {
        switch self {
        case .spades:
            return "spades"
        case .hearts:
            return "hearts"
        case .diamonds:
            return "diamonds"
        case .clubs:
            return "clubs"
        }
    }
    func color() -> String {
        switch self {
        case .spades:
            return "black"
        case .hearts:
            return "red"
        case .diamonds:
            return "red"
        case .clubs:
            return "black"
        }
    }
}

struct Card {
    var rank : Rank
    var suit : Suit
    func simpleDescription() -> String {
        return "The \(rank.simpleDescription()) of \(suit.simpleDescription())"
    }
}

func createDeck() -> Card[] {
    var deck = Array(count: 52, repeatedValue: Card(rank: .ace, suit: .spades))
    var suit = [Suit.spades, Suit.diamonds, Suit.clubs]
    var counter = 0
    for i in 1...13 {
        for suit in suits {
            deck[counter++] = Card(rank: Rank.rawValue!, suit: suit)
        }
    }

    return deck
}

func printDeck(deck: Card() ) {
    for card in deck {
        println(card.simpleDescription())
    }
}

let threeOfSpades = Card(rank: .three, suit: .spades)
let threeOfSpadesDescription = threeOfSpades.simpleDescription()

print(threeOfSpades)
print(threeOfSpadesDescription)

let deck = createDeck()
printDeck(deck)
