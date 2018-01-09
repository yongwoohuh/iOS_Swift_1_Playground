//: [Previous](@previous)

/*:
 ## Array and Dictionaries
 
 Swift array and dictionaries behave very similarly to what you've seen in Objective-C so far. The syntax on how they are declared may look different.
 */

// We can declare an array with square brackets syntax
var myNumberArray = [1,2,3]

// We are also able to append to the array (assuming it is mutable)
myNumberArray.append(4)

// We can also declare empty arrays with a type they hold and add objects to them later
var myEmptyArray = [Int]()

// We can declare a dictionary with square brackets and key/value data
var myDictionary = ["Students" : 5, "Teachers" : 2]

// This is how we add a new key/value to our dictionary
myDictionary["Principal"] = 1

// We can declare empty dictionaries and declare its key/value type
var mySecondDictionary = [Int : Double]()


/*:
 - Callout(Challenge):
    Declare a mutable array that is empty and holds Strings. On the next few lines, add the following names to the array: John, Karen, Jane
 
    Finally, print out each person's name from the array using their index and string interpolation
*/


/*:
 - Callout(Challenge):
  Declare a mutable dictionary with the following names and their salaries
 
    John - $50000
 
    Jane - $70000
 
    Karen - $62000
 
    On the next line, add this last person's info: Bob - $45000
 */


//: [Next](@next)
