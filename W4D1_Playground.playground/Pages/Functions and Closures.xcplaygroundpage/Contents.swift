//: [Previous](@previous)

//: ## Functions and Closures
//:
//: A function is a set of statements grouped together to perform a task. Functions can take in zero or many parameters and the function can also return a value or return nothing.

// Structure: Declare 'func' keyword, name of the function 'sayHello', open and close parentheses, open and close braces
// This function does not take any parameters and does not return any values
func sayHello(){
    print("Hello")
}

// Structure: Declare 'func' keyword, name of the function 'sayHello', a parameter called 'toPerson' of type String, open and close braces
// This function takes in a single parameter and does not return any values
func sayHello(toPerson: String){
    print("Hello \(toPerson)")
}

// Structure: Declare 'func' keyword, name of the function 'sayHello', a parameter called 'toPerson' of type String, returns a value of type String, open and close braces
// This function takes in a single parameter and returns a value of type String
func sayHello(toPerson: String) -> String{
    return "Hello \(toPerson)"
}


//: Closures are also a set of statements grouped together but the closure can be stored and passed around.

// This is storing a closure into a variable called 'sayHelloClosure'.
// The first '()' indicates it takes no parameters, the second '()' indicates it does not return any value, the 'in' keyword separates the type delcaration from the body
var sayHelloClosure = { () -> () in
    print("Hello from closure")
}

// Try it here!
//sayHelloClosure()


// This is storing a closure into a variable called 'sayHelloClosure'.
// The first '()' indicates it takes one parameter 'name', the second '()' indicates it does not return any value, the 'in' keyword separates the type delcaration from the body
var sayHelloClosureToPerson = { (name: String) -> () in
    print("Hello \(name)")
}

// Try it here!
//sayHelloClosureToPerson("Bob")


// This is storing a closure into a variable called 'sayHelloClosureWithReturn'.
// The first '()' indicates it takes one parameter 'name', the 'String' after the arrow indicates it returns a String type, the 'in' keyword separates the type delcaration from the body
var sayHelloClosureWithReturn = { (name: String) -> String in
    return "Hello \(name)"
}

// Try it here!
//sayHelloClosureWithReturn("Bob")


//: ### Challenge 13
//: Create four separate functions to add, subtract, multiple, and divide with two parameters given to it and returns a number result.
//: Try testing each one afterwards.



//: ### Challenge 14
//: Create a closure that takes in a 'name' parameter and prints it
//: Then, create a function that takes a 'name' parameter and a closure parameter. This function's only purpose is to use its 'name' parameter and pass it to the given closure parameter.
// Test your function by passing in your created closure as a parameter.



//: [Next](@next)
