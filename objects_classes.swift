class Shape {
    var numberOfSides = 0
    let name = "rectangle";
    func simpleDescription() -> String {
        return "A shape with \(numberOfSides) sides."
    }
    func nameOfShape(name: String) -> String {
        return "The name of the shape is \(name)"
    }
}


var shape =  Shape()
print(shape.numberOfSides)
shape.numberOfSides = 7
print(shape.numberOfSides)
var shapeDescription = shape.simpleDescription()
print(shapeDescription)
var nameOfShape = shape.nameOfShape(name: "Triangle")
print(nameOfShape)


class NamedShape {
    var numberOfSides: Int = 0
    var name: String

    init(name: String){
        self.name = name
    }

    func simpleDescription() -> String {
        return "A shape with \(numberOfSides) sides."
    }
}

class Square : NamedShape {
    var sideLength: Double

    init(sideLength: Double, name: String){
        self.sideLength = sideLength
        super.init(name: name)
        numberOfSides = 4
    }

    func area() -> Double {
        return sideLength * sideLength;
    }

    override func simpleDescription() -> String {
        return "A square with sides of length \(sideLength)"
    }
}

class EquilateralTriangle: NamedShape {
    var sideLength: Double = 0.0

    init(sideLength: Double, name: String){
        self.sideLength = sideLength
        super.init(name:name)
        numberOfSides = 3
    }

    var perimeter: Double {
     get {
        return 3.0 * sideLength
     }
     set {
        sideLength = newValue / 3.0
     }
    }

    override func simpleDescription() -> String {
        return "An equilateral triangle with sides of length \(sideLength)"
    }
}

let test = Square(sideLength: 5.2, name: "my test square")
test.area()
print(test.simpleDescription())
