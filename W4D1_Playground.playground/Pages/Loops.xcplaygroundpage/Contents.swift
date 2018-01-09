//: [Previous](@previous)

/*:
 ## For Loops

 For loops are a way to repeat a set of statements a certain number of times.
 
 The traditional 'C-style' loop does not exists in Swift anymore: `for ( int i = 0; i<10; i++ )`
 
 Instead, you create for loops that perform your set of statements for each item in a range or collection.
 */

// This is our collection
let pets = ["dog", "cat", "pig", "parrot"]

// This is the for loop grabbing each item and performing actions
for pet in pets {
    print(pet)
}

/*:
 We can declare a for loop using a range with a lower bound and upper bound
 - Example: `2...5` or `2..<5`
 */

for i in 2...5 {
    print("My Current Index: \(i)")
}

/*:
 - Callout(Challenge):
  Use a ranged for loop to search through the 'pets' array above for the word 'pig' and print out its index.
 */



//: [Next](@next)
