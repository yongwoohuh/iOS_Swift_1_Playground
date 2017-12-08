//: [Previous](@previous)

//: ## String Interpolation
//:
//: String interpolation is combining variables and constants inside a string.
//: We can start by declaring a name and we print out a sentence with the variable.

var name = "Joe Smith"
print("Your name is \(name)")

//: The sentence is printed as one string because string interpolation combined it for us.

//: ### Challenge 6
//: Declare three variables about a person with their name, age and height. Then print out a sentence describing the person with the three variables. Ex: Your name is Joe Smith, you age is 35, and your height is 175cm.



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



//: [Next](@next)
