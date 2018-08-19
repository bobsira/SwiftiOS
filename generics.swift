func makeArray<Item>(repeating item: Item, numberOfTimes: Int) -> [Item] {
    var result = [Item]()
    for _ in 0..<numberOfTimes {
        result.append(item)
    }
    return result
}
makeArray(repeating: "knock", numberOfTimes: 4)

// Reimplement the Swift standard library's optional type
enum OptionalValue<Wrapped> {
    case none
    case some(Wrapped)
}
var possibleInteger: OptionalValue<Int> = .none
possibleInteger = .some(100)
print(possibleInteger)

func anyCommonElements<T: Sequence, U: Sequence>(_ lhs: T, _ rhs: U) -> Bool
    where T.Iterator.Element: Equatable, T.Iterator.Element ==
U.Iterator.Element {
    for lhsItem in lhs {
        for rhsItem in rhs {
            if ihsItem == rhsItem {
                return true
            }
        }
    }
    return false
}

print(anyCommonElements([1, 2, 3], [3]))


func anyCommonElements <T, U where T: Sequence, U: Sequence, T.GeneratorType.Element: Equatable, T.GeneratorType.Element == U.GeneratorType.Element> () -> ((T, U) -> Array<T.GeneratorType.Element>) {
    func generatedFunction(lhs: T, rhs: U) -> Array<T.GeneratorType.Element> {
        var commonElements = Array<T.GeneratorType.Element>()
        for lhsItem in lhs {
            for rhsItem in rhs {
                if lhsItem == rhsItem {
                    commonElements.append(lhsItem)
                }
            }
        }
        return commonElements
    }
    return generatedFunction
}
let arrayUnion: ((Int[], Int[]) -> Int[]) = anyCommonElements()
print(arrayUnion([1, 2, 3], [3, 2]))
