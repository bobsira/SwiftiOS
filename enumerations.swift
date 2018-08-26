import Foundation 

enum SomeEnumeration {
    // enumeration definition goes here
}

enum CompassPoint {
    case north 
    case south 
    case east 
    case west 
}

enum Planet: Int {
    case mercury, venus, earth, mars, jupiter, saturn, uranus, neptune 
}

var directionToHead = CompassPoint.west
print(directionToHead)
directionToHead = .east
print(directionToHead)


directionToHead = .south
switch directionToHead {
    case .north:
        print("Lots of planets have a north")
    case .south:
        print("Watch out for penguins")
    case .east:
        print("Where the sun rises")
    case .west:
        print("Where the skies are blue")
}

let somePlanet = Planet.earth
switch somePlanet {
    case .earth:
        print("Mostly harmless")
    default:
        print("Not a safe place for humans")
}

enum Beverage: CaseIterable {
    case coffee, tea, juice
}
let numberOfChoices = Beverage.allCases.count
print("\(numberOfChoices) beverages available")
// Prints "3 beverages available"

for beverage in Beverage.allCases {
    print(beverage)
}
// coffee
// tea
// juice


enum Barcode { 
    case upc(Int, Int, Int, Int)
    case qrCode(String)
}

var productBarcode = Barcode.upc(8, 85909, 51226, 3)
productBarcode = .qrCode("ABCDEFGHIJKLMNOP")

switch productBarcode {
    case .upc(let numberSystem, let manufacturer, let product, let check):
        print("UPC: \(numberSystem), \(manufacturer), \(product), \(check).")
    case .qrCode(let productCode):
        print("QR code: \(productCode).")
}

switch productBarcode {
    case let .upc(numberSystem, manufacturer, product, check):
        print("UPC : \(numberSystem), \(manufacturer), \(product), \(check).")
    case let .qrCode(productCode):
        print("QR code: \(productCode).")
}

enum ASCIIControlCharacter: Character {
    case tab = "\t"
    case lineFeed = "\n"
    case carriageReturn = "\r"
}

enum Planet1: Int {
    case mercury = 1, venus, earth, mars, jupiter, saturn, uranus, neptune
}

print(Planet1.mercury)
print(Planet1.venus)

enum CompassPoint1: String {
    case north, south, east, west
}
print(CompassPoint1.south)

let earthOrder = Planet1.earth.rawValue
print(earthOrder)

//let sunsetDirection = CompassPoint.west.rawValue
//print(sunsetDirection)

let possiblePlanet = Planet1(rawValue: 7)
print(possiblePlanet)

let positionToFind = 11
if let somePlanet = Planet1(rawValue: positionToFind) {
    switch somePlanet {
        case .earth:
            print("Mostly harmless")
        default:
            print("Not a safe place for humans")
    } 
} else {
    print("There isn't a planet at position \(positionToFind)")
}

enum ArithmeticExpression {
    case number (Int)
    indirect case addition(ArithmeticExpression, ArithmeticExpression)
    indirect case multiplication(ArithmeticExpression, ArithmeticExpression)
}

indirect enum ArithmeticExpression1 {
    case number(Int)
    case addition(ArithmeticExpression1, ArithmeticExpression1)
    case multiplication(ArithmeticExpression1, ArithmeticExpression1)
}

let five = ArithmeticExpression.number(5)
let four = ArithmeticExpression.number(4)
let sum = ArithmeticExpression.addition(five, four)
let product = ArithmeticExpression.multiplication(sum, ArithmeticExpression.number(2))

print(" \(five) \(four) \(sum)  \(product)")

func evaluate(_ expression: ArithmeticExpression) -> Int {
    switch expression {
        case let .number(value):
            return value
        case let .addition(left,right):
            return evaluate(left) + evaluate(right)
        case let .multiplication(left, right):
            return evaluate(left) * evaluate(right)
    }
}

print(evaluate(product))
