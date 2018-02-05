//: [Previous](@previous)
/*:
 ## Array and Dictionaries
 
  Arrays and dictionaries allow us to store a collection of data. Create arrays and dictionaries using brackets '[]'. Remember that arrays hold a collection data based on an index, so we can access a value by writing the desired index within the brackets. Arrays also begin at index `0`. Dictionaries hold a key and a value, and we can access a value by writing the desired key within the brackets.
 */
//
//// We can declare an array with square brackets syntax
//var myNumberArray = [1,2,3]
//print("The value at index 1 is: \(myNumberArray[1])")
//
//// We can declare a dictionary with square brackets and key/value data
//var myDictionary = ["Students" : 5, "Teachers" : 2]
//
//// This is how we add a new key/value to our dictionary
//myDictionary["Principal"] = 1

/*:
 - Experiment:
 Try creating an array and dictionary using `'let'` vs `'var'` then try adding something to them. What do you notice? For the array, you can use a method called 'append' to add something to it.
 */
//let evenNumbers = [2, 4, 6, 8, 10]
//var primeNumbers = [1, 3, 5, 7, 11, 13, 17, 19, 23]
//
//primeNumbers.append(29)
//print("prime numbers \(primeNumbers)")



/*:
 - Experiment:
 Try creating an empty array with an explicit type `[type]`. What happens when you add a value that isn't the same type?
 */
//var myNums: [Int]
//myNums = [2, 5, 6, 8, 54]
//var myString = [String]()
//myString.append("Life is short")
//myString.append("Amor Fati")

/*:
 - Experiment:
 Try creating an empty dictionary with an explicit type. `[keyType: valueType]`
 */
//var myDic : [String: Int] = ["Yongwoo": 42]

/*:
 - Experiment:
 Create an array with any values of your choice. Play around with accessing a value at a certain index. Then try playing with the following methods of an array and find out what they do:
 - append
 - insert
 - removeAt
 - removeAll
 - reverse
 - count
 */
//var squareNumbers = [1, 4, 9, 25, 36, 49, 64, 81, 100]
//squareNumbers.append(121)
//squareNumbers.insert(16, at: 0)
//print(squareNumbers)
//squareNumbers.remove(at: 0)
//print(squareNumbers)
//squareNumbers.removeAll()
//
//squareNumbers = [1, 4, 9, 25, 36, 49, 64, 81, 100]
//squareNumbers.reverse()
//squareNumbers.insert(16, at: 3)
//squareNumbers.count
/*:
 - Experiment:
 Create a dictionary with any values of your choice. Play around with accessing a value by its key. Try keys using different case sensitivity, what happens? Then try playing with the following methods of a dictionary and find out what they do:
 - removeValue
 - isEmpty
 - count
 */
//var numbers = ["primes": [1, 2, 3, 5, 7, 11, 13], "squareNumbers": [1,4,9,16,25,36]]
//numbers.removeValue(forKey: "squareNumbers")
//print(numbers)
//numbers.isEmpty
//numbers.count

/*:
 - Callout(Challenge):
    Declare a mutable array that is empty and holds `Strings`. On the next few lines, add the following names to the array: John, Karen, Jane
 
    Finally, print out each person's name from the array using their index and string interpolation
*/
//var names : [String]
//names = ["John", "Karen"]
//names.append("Jane")
//print("There is \(names[0]), \(names[1]), \(names[2]) in this array of names")

/*:
 - Callout(Challenge):
  Declare a mutable dictionary with the following names and their salaries
 
    John - $50000
 
    Jane - $70000
 
    Karen - $62000
 
    On the next line, add this last person's info: Bob - $45000
 */
var salaries = ["John": 50000, "Jane": 70000, "Karen": 62000,]
salaries["Bob"] = 45000
print(salaries)

//: [Next](@next)
