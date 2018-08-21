//import Foundation 

var namesOfIntegers = [Int: String]()
namesOfIntegers[16] = "sixteen" // namesOfInteger now contains 1 key-value pair
namesOfIntegers = [:] // namesOfIntegers is once again an empty dictionary of type [Int: String]

var airports: [String: String] = ["XYZ": "Toronto Pearson", "DUB": "Dublin"]
//var airports = ["XYZ": "Toronto Pearson", "DUB", "Dublin"]

print("The airports dictionary contains \(airports.count) items.")

if airports.isEmpty {
    print("The airports dictionary is empty.")
} else {
    print("The airports dictionary is not empty.")
}

airports["LHR"] = "London"
airports["LHR"] = "London Hearthrow"

if let oldValue = airports.updateValue("Dublin Airport", forKey: "DUB"){
    print("The old value for DUB was \(oldValue).")
}

if let airportName = airports["DUB"] {
    print("The name of the airport is \(airportName).")
} else {
    print("That airport is not in the airports dictionary.")
}

airports["APL"] = "Apple International"
airports["APL"] = nil 

if let removedValue = airports.removeValue(forKey: "DUB") {
    print("The removed airport's name is \(removedValue).")
} else {
    print("The airports dictionary does not contain a value for DUB.")
}

for (airportCode, airportName) in airports {
    print("\(airportCode): \(airportName)")
}

for airportCode in airports.keys {
    print("Airport code: \(airportCode)")
}

for airportName in airports.values {
    print("Airport name: \(airportName)")
}

let airportCodes = [String](airports.keys)
// airportCodes is ["YYZ", "LHR"]

let airportNames = [String](airports.values)
// airportNames is ["Toronto Pearson", "London Heathrow"]
