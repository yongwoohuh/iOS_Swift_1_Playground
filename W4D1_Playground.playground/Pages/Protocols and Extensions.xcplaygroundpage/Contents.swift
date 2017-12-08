//: ### Protocols
//: Protocols are a defined contract or blueprint that a class, struct or enum must follow.

// Here we define a 'ShapeProtocol' where anything that conforms to it must provide the number of sides
protocol ShapeProtocol {
    var numberOfSides: Int { get set }
}

// This 'Triangle' class conforms to the 'ShapeProtocol' and defines the number of sides for this shape
class Triangle: ShapeProtocol {
    var numberOfSides: Int
    
    init(){
        self.numberOfSides = 3
    }
}


//: ### Challnge 19
//: Define a person protocol with name, gender, age and add a custom initializer to set all the properties and a function to print a description of this person.
//: Create a 'Student' class that conforms to this protocol and print the description of this student using its name.


// Here we define a 'PersonProtocol'. Anyone who conforms to this protocol must consist of properties and functions defined.
protocol PersonProtocol {
    
    var name: String { get set }
    var gender: String { get set }
    var age: Int { get set }
    
    init(name: String, gender: String, age: Int)
    func myPersonDescription()
}


//: ### Extensions
//: Extensions are a way to add additional functions to an existing class, struct or enum.
//: For example, I can extend the 'Double' class to add a function I may use very often such as squaring a number. ie: 4*4 = 16

// This is declaring an extension on the Double class
extension Double {
    
    // This 'square' function takes its own value and multiples it by itself, then returns the new value
    func square() -> Double {
        
        return self * self
    }
}

var myDoubleValue = 5.0
var mySquaredDoubleValue = myDoubleValue.square()


//: ### Challnge 20
//: We are going to add a few extensions to several classes that you could potentially use for your future projects to make things more convenient.
//: 1. Create an extension on UIColor that converts hex represented colours to a UIColor to use. ex: #FFFFFF would give a UIColor of white (Hint: You can google the algorithm on how to convert hex values to a UIColor)
//: 2. Create an extension on String called 'contains'. It returns true if the provided parameter string is contained within the searchable string, otherwise it will return false.
//: 3. Create an extension on Double to add a function that converts the number of seconds into minutes and another function to hours. ex: Given 900 seconds, the minutes returned will be 15 minutes, and the hours returned would be 0.25 hours.

