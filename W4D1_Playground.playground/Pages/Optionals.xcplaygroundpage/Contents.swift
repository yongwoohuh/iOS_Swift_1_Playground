//: [Previous](@previous)

/*:
 ## Optionals and nil

 Swift introduces the *optional* type which is a 'wrapper' around other types. When you ask it for its value, it can either return `nil` or the value of the type that it's wrapping.

  First let's start with a conversion that doesn't require optionals. If we have a Double and an Int, and we want to do math with them, the compiler won't let us. This is because we can't add two different types together.
 */

var ratio: Double = 10.0 // ratio is a Double
var integerValue: Int = 20 // integerValue is an Int

// ratio * count // uncomment this line and see what happens - this line does not compile.

/*:
 To get around this we can convert between types. For example, creating a new Double using an Int.
*/

var count = 2
var countDouble = Double(count) // convert count to a Double

ratio * countDouble // now this works!

/*:
 With that kind of conversion in mind, let's say we have a string that contains the characters 1 and 0, e.g. "10". That looks like a number, but it's a string that contains a text representation of a number.
 
  If we want to add 1 to our number-containing-string, we need to convert it to a number. We can do that!
 */

let numberString = "10" // a string containing digits
var convertedNum = Double(numberString) //convert numberString to a Double

/*:
  Now look at the type of the variable `convertedNum`. It's not actually a `Double` it's a `Double?`. The question mark at the end of the type indicates that this variable is "optional". That means we might have a double or we might have nothing. This is because, unlike converting an Int to a Double, the conversion between a `String` and a `Double` might fail! It could fail because some strings don't make sense as numbers. How would you convert the string "😎" to a `Double`...?

  Ok so that's not too crazy! Things that can fail return optionals, and their type has a question-mark after it, like `Int?`, things that always work give us back non-optionals (e.g. `Int` without a question-mark). Cool!

  - Experiment:
  So now let's try to add 1 to our `convertedNum` variable.
 */

// convertedNum = convertedNum + 1 // uncomment this line!

/*:
 Looks like the compiler doesn't like that! It's giving us a cryptic error about applying binary operators and types and things, and offers the suggestion of adding an exclaimation point!
 
  We aren't able to do math with `convertedNum` because while it's easy to say how to add `10` and `1` together, Swift doesn't know how to add maybe-nothing-maybe-10 and `1` together.
 
  To use our optional Int, we need to unwrap it. There are a few ways to unwrap variables, and we'll need to know at least two of them.
 
  The first and most dangerous way is by adding an exclaimation point. This is called "force unwrapping". It will make the compiler ignore the optional and use the contents of `convertedNum`.  So if `convertedNum` does contain a number, the unwap will succeed.  However, the force-unwrap will crash the Playground if our `numberString` contained something that couldn't be converted to a number.
*/

/*:
  - Experiment:
  Uncomment the following line of code that force unwrapps `convertedNum`
 
  What happens if you go back and change `numberString` to a string that doesn't contain numbers? something like "😎"
*/

// print(convertedNum!) //

/*:
 The next way to deal with optionals is called "Conditional unwrapping" or sometimes casually called an "if-let". It's **much** safer, and won't break your Playground.
 
  The code below uses a conditional unwrap on `convertedNum`. This creates a new variable "unwrapped", but only if `convertedNum` is *not* nil. If you option click on the variable `unwrapped` you will notice that it is a `Double` not a `Double?`
*/

if let unwrapped = convertedNum {
    // unwrapped exists in this block, and is number unwrapped.
    print("\(unwrapped) is a Double and no longer a Double?")
} else {
    // unwrapped doesn't exist in this block.
    print("convertedNum did not unwrap")
}

/*:
 - Callout(Challenge):
 
    Put the cars and their price into a dictionary
 
    Mazda3 - $50000
 
    CRV - $60000
 
    Hummer - $100000
 
    Print out each car's price using conditional unwrapping and string interpolation.
    Try printing a car's price using a name that doesn't exist.
*/

//: [Next](@next)
