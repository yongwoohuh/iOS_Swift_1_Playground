//: [Previous](@previous)

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


//: [Next](@next)
