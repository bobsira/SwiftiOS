protocol ExampleProtocol {
    var simpleDescription: String{ get }
    mutating func adjust ()
}

//Classes, enumerations, and structs can all adopt protocols.
class SimpleClass : ExampleProtocol {
    var simpleDescription : String = "A very simple class."
    var anotherProperty: Int = 69105
    func adjust() {
        simpleDescription += " Now 100% adjusted."
    }
}

var a = SimpleClass()
a.adjust()
let aDescription = a.simpleDescription


struct SimleStructure : ExampleProtocol {
    var simpleDescription: String = "A simple structure"
    mutating func adjust(){
        simpleDescription += " (adjusted)"
    }
}

var b  = SimleStructure()
b.adjust()
let bDescription = b.simpleDescription


enum SimpleEnum : ExampleProtocol {
    case A, B, AA, BB
    var simpleDescription: String {
        get {
            switch self {
                case .A:
                    return "A simple enum: A"
                case .B:
                    return "A simple enum: B"
                case .AA:
                    return "A simple enum AA"
                case  .BB:
                    return "A simple enum: BB"
            }
        }
    }
    mutating func adjust(){
        switch self {
        case .A:
            self = A
        case .B:
            self = B
        case .AA:
            self = A
        case .BB:
            self = B
        }
    }
}


extension Int: ExampleProtocol {
    var simpleDescription : String {
        return "The number \(self)"
    }
    mutating func adjust(){
        self += 42
    }
}

extension Double {
    var abs : Double {
        get {
            return fabs(self)
        }
    }
}

var myDouble = -17.8
print(myDouble.abs)

print(7.simpleDescription)

//var c = SimpleEnum.AA
//print(c.simpleDescription)
//c.adjust()
//print(c.simpleDescription)

let protocolValue: ExampleProtocol = a
print(protocolValue.simpleDescription)
//print(protocolValue.anotherProperty)
