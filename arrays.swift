var someInts = [Int]()
someInts.append(3)
someInts = []
print("someInts is of type [Int] with \(someInts.count) items.")

var threeDoubles = Array(repeating: 0.0, count: 3)
print("threeDoubles is of type [Double] with \(threeDoubles.count) items.")

var anotherThreeDoubles = Array(repeating: 2.5, count: 3)
var sixDoubles = threeDoubles + anotherThreeDoubles
print("sixDoubles is of type [Doubles] with \(sixDoubles.count) items.")

var shoppingList: [String] = ["Eggs", "Milk"]
//var shoppingList = ["Eggs", "Milk"]
shoppingList.append("Flour")
shoppingList += ["Baking Powder"]
print("The shopping list contains \(shoppingList.count) items.")

if shoppingList.isEmpty {
    print("The shopping list is empty.")
} else {
    print("The shopping list is not empty.")
}

shoppingList += ["Chocolate Spread", "Cheese", "Butter"]

var firstItem = shoppingList[0]
print(firstItem)
shoppingList[0] = "Six eggs"

shoppingList[4...6] = ["Bananas", "Apples"]

shoppingList.insert("Maple Syrup", at: 0)

let mapleSyrup = shoppingList.remove(at: 0)
let apples = shoppingList.removeLast()

for item in shoppingList {
    print(item)
}

for (index, value) in shoppingList.enumerated(){
    print("Item \(index + 1): \(value)")
}

