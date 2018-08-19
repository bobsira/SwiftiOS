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

let ace = Rank.ace
print(ace)
let aceRawValue = ace.rawValue
print(aceRawValue)
let king = Rank.king
print(king)
let kingRawValue = king.rawValue
print(kingRawValue)


func isSameRank(first: Rank, second: Rank) -> Bool {
    return first.rawValue == second.rawValue
}

print(isSameRank (first: Rank.ace, second: Rank.queen))
print(isSameRank(first: Rank.two, second: Rank.two))


if let convertedRank = Rank(rawValue: 3){
    let threeDescription = convertedRank.simpleDescription()
}
