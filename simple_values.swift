var myVariable = 42
myVariable = 50
let myConstant = 42

let implicitInteger = 70
let implicitDouble = 70.0
let explicitDouble: Float = 70
let explicitFloat: Double = 4

let label = "The width is "
let width = 94
let widthLabel = label + String(width)

let apples = 3
let oranges = 5
let appleSummary = "I have \(apples) apples."
let fruitSummary = "I have \(apples + oranges) pieces of fruit."

let name = "Bob Sira Sira"
print("Density is \(explicitFloat + 45) in the afternoon")
print(name)

let quotation = """
I said "I have \(apples) apples."
And then I said "I have \(apples + oranges) pieces of fruit."
"""



var shoppingList = ["catfish","water","tulips","blue paint"]
shoppingList[1] = "bottle of water"

var occupations = [
"Malcom" : "Captain",
"Kaylee": "Mechanics",
]

occupations["Jayne"] = "Public Relations"

//create an empty array or dictionary, use the initializer syntax
let emptyArray = [String]()
let emptyDictionary = [String: Float]()


shoppingList = [] // emptyArray
occupations = [:] // emptyDictionary
