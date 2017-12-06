//: # Lighthouse Labs
//:
//: ### W4D1 - A Swift Introduction
//:

//: ## Variables
//: Variables allow us to store data that we can use at a later time
//: In swift, you create variables like this:

var greeting = "Hello, world!"


//: There are three important parts to creating a variable: 1) writing `var` to show you are creating a new variable, 2) naming the variable,
//: and 3) the data stored inside the variable
//: In the example above, the name of the variable is `greeting` and the value is a string "Hello, world!"


var count = 0

//: We can change the data stored in a variable.
//: To do this we use the *assignment operator* `=`.
//: For example, the following code changes the data stored in the `count` variable to the number 10.

count = 10

//: *Note:* To create a new variable we write `var` before the name, when we change the data inside an existing variable we do not.


let gravity = 9.8

//: Variables can also be declared using the 'let' keyword as seen above. These values are meant to be constant and cannot be changed.


//: ### Challenge 1
//:
//: Now it's your turn. Change `greeting` to be a different string by using the assignment operator.



//: ### Challenge 2
//:
//: We want to add 1 to whatever the value of `count` is now. We could manually look at the value in `count`, see that it is 10 and put 11 into `count` using the assignment operator. This works, but we can do it in a better way. We can set count to be whatever count is, plus 1. See if you can figure out the syntax for this.



//: ### Challenge 3
//:
//: Change the value of 'gravity' now. What happens? Did the value change? Why or why not?




//: ## Types
//:
//: Types are very important in Swift. When you create a variable, that variable has a "type". What this means is the variable can only hold one type of data. If the variable is of type `String`, that means you can't put a number in it.
//:
//: Hold down the Option key and click on the variables `greeting` and `count` to see a popup window with information about the variable. If we click on `greeting`, we can see it's a `String`. What type is `count`?

greeting
count

//: Let's go over some basic types which you've also seen in Objective-C:
//:
//: String - a collection of characters inside "quotation marks"
//:
//: Bool - either true or false
//:
//: Int - a whole number. ex) 5
//:
//: Double - a number with more precision. ex) 5.55


//: ### Challenge 4
//: What type are the variables `tipAmount`, and `isOpen`?

var tipAmount = 6.01
// tipAmount's type is:


var isOpen = true
// isOpen's type is:


//: ## Type Inference
//:
//: Swift infers (guesses) the type of a variable based on the initial value. This is mostly useful, but sometimes we want to change the inferred type.
//: For example, if we want to make a variable that has decimal precision. Integers (Int) are only whole numbers (1,2,3, etc.) while Doubles can represent fractional numbers (2.14, 5.99, etc.).
//:
//: To create a Double, all we need to do is specify the type when we create the variable.

var height: Double = 10

//: ### Challenge 5
//: Since all our variables have types, even if we haven't specifically set them, we can't store any value in them... only values of the right type.
//: Test this out. Try setting the value of `count` to be `height`:



//: It didn't work, right? They are both numbers, but `count` is an Int, and `height` is a `Double`. There are ways to convert the `Double` 10 into the `Int` 10, but we won't go into that just now.



//: ## String Interpolation
//:
//: String interpolation is combining variables and constants inside a string.
//: We can start by declaring a name and we print out a sentence with the variable.

var name = "Joe Smith"
print("Your name is \(name)")

//: The sentence is printed as one string because string interpolation combined it for us.

//: ### Challenge 6
//: Declare three variables about a person with their name, age and height. Then print out a sentence describing the person with the three variables. Ex: Your name is Joe Smith, you age is 35, and your height is 175cm.


//: ## Array and Dictionaries
//:
//: Swift array and dictionaries behave very similarly to what you've seen in Objective-C so far. The syntax on how they are declared may look different. Refer back to slides to remind you if you have forgotten.

//: ### Challenge 7
//: Declare a mutable array that is empty and holds Strings. On the next few lines, add the following names to the array: John, Karen, Jane (Maybe do a quick Google to find out how)
//: Finally, print out each person's name from the array using their index and string interpolation



//: ### Challenge 8
//: Declare a mutable dictionary with the following names and their salaries
//: John - $50000
//: Jane - $70000
//: Karen - $62000
//:
//: On the next line, add this last person's info: Bob - $45000



//: ## Control Flow
//:
//: Control flow are code structures that run certain code based on a condition. You've already seen this in Objective-C, if and switch statements. The syntax is very similar except for the omission of the parenthesis around the condition
//:
//: The following if statement showcases multiple conditions to check. Try changing the value of 'limit' and see the results
let limit = 102

if limit > 100 {
    print("This number is beyond my limit")
}
else if limit > 50 {
    print("This number is an acceptable limit")
}
else{
    print("This number is way below my limit")
}

//: The following switch statement showcases multiple conditions to check. Some of the case conditions may be unfamiliar to you. Try changing the 'vegetable' variable to test the conditions and figure out how they work
let vegetable = "red pepper"
var vegetableComment = ""
switch vegetable {
case "celery":
    vegetableComment = "Add some raisins and make ants on a log."
case "cucumber", "watercress":
    vegetableComment = "That would make a good tea sandwich."
case let x where x.hasSuffix("pepper"):
    vegetableComment = "Is it a spicy \(x)?"
default:
    vegetableComment = "Everything tastes good in soup."
}


//: ### Challenge 9
//: Create an if/else statement to print out the grammatically correct description of the number of bicycles there are. Declare a 'bicycleCount' variable with any number you wish then cover the conditions for zero bicycles, 1 bicycle, and more than 1 bicycle. ie: 'There are zero bicycles', 'There is 1 bicycle', 'There are 20 bicycles'


//: ### Challenge 10
//: Rewrite the above Challenge 9 as a switch statement



//: ## Optionals and nil
//:
//: Swift introduces optional type which is a 'wrapper'. When you ask it for its value, it can either return nil or a value of the type you indicated when you created the optional.
//:
//: First let's start with a conversion that doesn't require optionals. If we have a Double and an Int, and we want to do math with them, the compiler won't let us. This is because we can't add two different types together.

var ratio: Double = 10.0 // ratio is a Double
var integerValue: Int = 20 // integerValue is an Int

// ratio * count // uncomment this line and see what happens - this line does not compile.

//: To get around this we can convert between types. For example, creating a new Double using an Int.

var countDouble = Double(count) // convert count to a Double

ratio * countDouble // now this works!

//: With that kind of conversion in mind, let's say we have a string that contains the characters 1 and 0, e.g. "10". That looks like a number, but it's a string that contains a text representation of a number.
//:
//: If we want to add 1 to our number-containing-string, we need to convert it to a number. We can do that!

var numberString = "10" // a string containing digits
var convertedNum = Double(numberString) //convert numberString to a Double

//: Now look at the type of the variable `convertedNum`. It's not actually a `Double` it's a `Double?`. The question mark at the end of the type indicates that this variable is "optional". That means we might have a double or we might have nothing. This is because, unlike converting an Int to a Double, the conversion between a `String` and a `Double` might fail! It could fail because some strings don't make sense as numbers. How would you convert the string "😎" to a `Double`...?
//:
//: Ok so that's not too crazy! Things that can fail return optionals, and their type has a question-mark after it, like `Int?`, things that always work give us back non-optionals (e.g. `Int` without a question-mark). Cool!
//:
//: So now let's try to add 1 to our `convertedNum` variable.

//convertedNum = convertedNum + 1 // uncomment this line!

//: Looks like the compiler doesn't like that! It's giving us a cryptic error about applying binary operators and types and things, and offers the suggestion of adding an exclaimation point!
//:
//: We aren't able to do math with `convertedNum` because while it's easy to say how to add `10` and `1` together, Swift doesn't know how to add maybe-nothing-maybe-10 and `1` together.
//:
//: To use our optional Int, we need to unwrap it. There are a few ways to unwrap variables, and we'll need to know at least two of them.
//:
//: The first and most dangerous way is by adding an exclaimation point. This is called "force unwrapping". It will make the compiler ignore the optional and use the contents of `convertedNum`.  So if `convertedNum` does contain a number, the unwap will succeed.  However, the force-unwrap will crash the Playground if our `numberString` contained something that couldn't be converted to a number.

//print(convertedNum!) // Uncomment this line - Force unwrapping

//: The next way to deal with optionals is called "Conditional unwrapping" or sometimes casually called an "if-let". It's **much** safer, and won't break your Playground.
//:
//: The code below uses a conditional unwrap on `convertedNum`. This creates a new variable "unwrapped", but only if `convertedNum` is *not* nil. If you option click on the variable `unwrapped` you will notice that it is an `Double` not an `Double?`

if let unwrapped = convertedNum {
    // unwrapped exists in this block, and is number unwrapped.
    print("\(unwrapped) is an Double and no longer an Double?")
}else{
    // unwrapped doesn't exist in this block.
    print("convertedNum did not unwrap")
}

//: ### Challenge 11
//: Put the cars and their price into a dictionary
//: Mazda3 - $50000
//: CRV - $60000
//: Hummer - $100000
//:
//: Print out each car's price using conditional unwrapping and string interpolation.
//: Try printing a car's price using a name that doesn't exist.




//: ## For Loops
//:
//: For loops are a way to repeat a set of statements a certain number of times.
//: The traditional 'C-style' loop does not exists in Swift anymore ie. for ( int i = 0; i<10; i++ )
//: Instead, you create for loops that perform your set of statements for each item in a range or collection

// This is our collection
let pets = ["dog", "cat", "pig", "parrot"]

// This is the for loop grabbing each item and performing actions
for pet in pets {
    print(pet)
}

// We can declare a for loop using a range with a lower bound and upper bound
// Example: 2...5 or 2..<5
for i in 2...5 {
    print("My Current Index: \(i)")
}

//: ### Challenge 12
//: Use a ranged for loop to search through the 'pets' array above for the word 'pig' and print out its index



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


//: ### Tuples
//: Tuples are a type that can store multiple values into a group. You can also name each of values if you choose to.

// This is a tuple with a person's first name, last name and age.
var personTuple = ("Bob", "Smith", 23)

// We can access each value using their index
personTuple.0
personTuple.1
personTuple.2

// We can also consider naming each value for clarity
var namedPersonTuple = (firstName: "Jane", lastName: "Smith", age: 23)

// This way, we can also access the values using their name
namedPersonTuple.firstName
namedPersonTuple.lastName
namedPersonTuple.age


//: ### Challenge 15
//: Create a function that takes three parameters, a name of type String, an age of type Int, and eligable of type Bool.
//: The function returns a tuple of the name and age if eligable is true, otherwise, it will return nil.
//: To test: call your new function with eligable true and false, and print the two values
//: (Hint: Use optional return value and conditional unwrapping)


//: Enums
//: Enums are related values defined by the user. An example to think of this are the months within a year. There are only 12 months and when you are programming, you'll need a way to represent this. We could potentially use a String for each month, but that could lead to spelling mistakes. So instead, we can define our own values that makes it obvious to the user.

enum Months{
    case January
    case Feburary
    case March
    case April
    //...
}

//: Now we can represents the months in our program with easy readiablity and minimal mistakes.
let januaryMonth = Months.January
let marchMonth = Months.March


//: ### Challnge 16
//: Create enums for the game "Rock, Paper, Scissors". Then create a function within the enum that determines which handshape beats what.
//: ie: If I invoke "HandShape.rock.whatBeatsMe()", this will print "Paper"


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


//: ### Challnge 17
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


//: ### Challnge 18
//: We are going to add a few extensions to several classes that you could potentially use for your future projects to make things more convenient.
//: 1. Create an extension on UIColor that converts hex represented colours to a UIColor to use. ex: #FFFFFF would give a UIColor of white (Hint: You can google the algorithm on how to convert hex values to a UIColor)
//: 2. Create an extension on String called 'contains'. It returns true if the provided parameter string is contained within the searchable string, otherwise it will return false.
//: 3. Create an extension on Double to add a function that converts the number of seconds into minutes and another function to hours. ex: Given 900 seconds, the minutes returned will be 15 minutes, and the hours returned would be 0.25 hours.

