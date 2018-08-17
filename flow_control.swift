let individualScores = [75, 43, 103, 87, 12]
var teamScore = 0
for score in individualScores {
    if score > 50 {
        teamScore += 3
    } else {
        teamScore += 1
    }
}

print(teamScore)

var optionalString:String? = "Hello"
print(optionalString == nil)


name = "Bob Sira Sira"
var optionalName : String? = "John Appleseed"
var greeting = "Hello!"
if let name = optionalName {
    greeting = "Hello, \(name)"
}


let nickName: String? = nil
let fullName: String = "John Appleseed"
let informalGreeting = "Hi \(nickName ?? fullName)"


let vegetable = "red pepper"
switch vegetable {
case "celery":
      print("Add some raisins and make ants on a log")
case "cucumber" , "watercress":
      print("That would make a good tea sandwich.")
case let x where x.hasSuffix("pepper"):
      print("Is it a spicy \(x)?")
default:
      print("Evetything tastes good in soup.")
}

let interestingNumbers = [
    "Prime": [2,3,5,7,11,13],
    "Fibonacci": [1,1,2,3,5,8],
    "Square": [1,4,9,16,25],
]


var kindOfLargestNumber = ""
var largest = 0
for(kind, numbers) in interestingNumbers {
    for number in numbers {
    if number > largest {
    largest = number
    kindOfLargestNumber = kind
    }
    }
}
print(largest)


var n = 2
while n < 100 {
    n *= 2
}
print(n)


var m = 2
repeat {
    m *= 2
} while m < 100
print(m)

var total = 0
for i in 0..<4{
    print(i)
    total += i
}
print(total)

var total = 0
for i in 0...4{
    print(i)
    total += i
}
print(total)
//Use ..< to make a range that omits its upper value, and use ... to make a range that includes both values.
