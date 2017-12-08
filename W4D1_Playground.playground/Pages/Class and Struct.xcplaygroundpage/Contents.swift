//: [Previous](@previous)

//: ## Class and Struct
//:
//: The concept of a class is just like what you've learned about a class in Objective-C. Structs are similar but they cannot be subclasses and any instance of them are passed by value NOT by reference.

//: The Shape class and Shape struct look very similar with a few expections as mentioned in the lecture slides.
class ShapeClass {
    var numberOfSides = 0
    func description() -> String {
        return "A shape with \(numberOfSides) sides."
    }
}

struct ShapeStruct {
    var numberOfSides = 0
    func description() -> String {
        return "A shape with \(numberOfSides) sides."
    }
}


//: ### Challenge 13
//: - Create a class for Car. Add a String property called model.
//: - Create a function called drive. Inside the function include a print statement that prints the model of the car you are driving.
//: - Create a custom initalizer that requires an String model as an input.
//: - Subclass Car and make a Toyota Class. Override init() and set the model to "Prius" inside the method.

//: To Test:
//: - Add an instance of a Car called nissan. Initialize it with model named "Rogue"
//: - Add the drive() method to make sure it prints out "Rogue"
//: - Add an instance of Toyota called toyota. Initialize it.
//: - Add the drive() method to make sure it prints out "Prius"



//: ### Challenge 14
//: Earlier, we mentioned that classes are passed by reference and structs are passed by value. Let's try to clarify this with an example.
//: First, create a Person class with a name property and a custom initializer that takes a name as its parameter, then uncomment 'Section A'. What do think will happen? What are the results?
//: Now create the same Person class but convert it to a struct. Uncomment 'Section B'. What do think will happen? What are the results?

// Implement Person class under here!


// Section A
//var firstPersonObject = Person(name: "Joe")
//var secondPersonObject = firstPersonObject
//secondPersonObject.name = "Jane"
//
//print(firstPersonObject.name)
//print(secondPersonObject.name)


// Implement Person struct under here!


// Section B
//var firstPersonStruct = Person(name: "Joe")
//var secondPersonStruct = firstPersonStruct
//secondPersonStruct.name = "Jane"
//
//print(firstPersonStruct.name)
//print(secondPersonStruct.name)


//: [Next](@next)
