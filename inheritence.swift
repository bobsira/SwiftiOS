import Foundation

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

class Circle : NamedShape {
    var radius: Double

    init(radius: Double, name: String){
        self.radius = radius
        super.init(name: name)
    }

    func area() -> Double {
        return 3.14 * radius * radius
    }

    override func simpleDescription() -> String {
        return "This is a circle of radius \(radius)"
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

class TriangleAndSquare{
    var triangle: EquilateralTriangle {
        willSet {
            square.sideLength = newValue.sideLength
        }
    }
    var square : Square {
      willSet {
          triangle.sideLength = newValue.sideLength
      }
    }
    init(size: Double, name: String){
        square = Square(sideLength:size, name: name)
        triangle = EquilateralTriangle(sideLength:size, name: name)
    }
}



let test = Square(sideLength: 5.2, name: "my test square")
print(test.area())
print(test.simpleDescription())

let circle = Circle(radius: 7.0, name: "my secret circle")
print(circle.area())
print(circle.simpleDescription())

let etriangle = EquilateralTriangle(sideLength: 3.1, name: "a triangle")
print(etriangle.perimeter)
etriangle.perimeter = 9.9
print(etriangle.sideLength)

var triangleAndSquare = TriangleAndSquare(size: 10, name: "another test shape")
print(triangleAndSquare.square.sideLength)
print(triangleAndSquare.triangle.sideLength)
triangleAndSquare.square = Square(sideLength: 50, name: "larger Square")
print(triangleAndSquare.triangle.sideLength)
