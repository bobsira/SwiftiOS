//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"
print("Hello")

//extension SomeExtension: SomeProtocol, AnotherProtocol {
    // new functionality to add to SomeType goes here
    // implementation of protocol requirements goes here
//}

extension Double {
    var km: Double { return self * 1_000.0 }
    var m: Double { return self }
    var cm: Double { return self / 100.0 }
    var mm: Double { return self / 1_000.0 }
    var ft: Double { return self / 3.28084 }
}

let oneInch = 25.4.mm
let threeFeet = 3.ft

let aMarathon = 42.km + 195.km

struct Size{
    var width = 0.0, height = 0.0
}

struct Point {
    var x = 0.0, y = 0.0
}

struct Rect {
    var origin = Point()
    var size = Size()
}

let defaultRect = Rect()
let memberwiseRect = Rect(origin: Point(x: 2.0, y: 2.0),
                          size: Size(width: 5.0, height: 5.0))

extension Rect {
    init(center: Point, size: Size) {
        let originX = center.x - (size.width / 2 )
        let originY = center.y - (size.height / 2 )
        self.init(origin: Point(x: originX, y: originY), size: size)
    }
}

let centerRect = Rect(center: Point(x: 4.0, y: 4.0), size: Size(width: 3.0, height: 3.0))


extension Int {
    func repetitions(task: () -> Void )  {
        for _ in 0..<self {
            task()
        }
    }
    
    mutating func square() {
        self = self * self
    }
    
    subscript(digitIndex: Int) -> Int {
        var decimalBase = 1
        for _ in 0..<digitIndex {
            decimalBase *= 10
        }
        return (self / decimalBase) % 10
    }
    
    enum Kind {
        case negative, zero, positive
    }
    
    var kind: Kind {
        switch self {
        case 0:
            return .zero
        case let x where x > 0:
            return .positive
        default:
            return .negative
        }
    }
}

3.repetitions {
    print("sirasira!")
}

var someInt = 3
someInt.square()
4875389622[0]
746381295[8]

func printIntegerKinds(_ numbers: [Int]) {
    for number in numbers {
        switch number.kind {
        case .negative:
            print("-", terminator: "")
        case .zero:
            print("0", terminator: "")
        case .positive:
            print("+", terminator:"")
            
        }
    }
    print("")
}

printIntegerKinds([3, 19, -27, 0, -6, 0, 7])



