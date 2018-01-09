/*:
 # Lighthouse Labs
 ### W4D1 - A Swift Introduction
*/

/*:
 Swift playgrounds allow you to run Swift code directly without having to code an entire app.
 
 - Experiment: Let's try this out now, write the following line of code directly below this comment
 
    `print("Hello, world!")`
 */


/*:
 ## Variables

 In Swift, we store data in variables and constants. Use `let` to make a constant and `var` to make a variable.
 */

let school = "Lighthouse Labs"
var students = 0
students = 7

/*:
 - Experiment:
 Try creating a some variables for your name, and age.
 What happens if you try to change the value of a constant?
 */
// variables


//: ---

/*:
 ## Types
 
 Types are very important in Swift. When you create a variable, that variable has a *type*. This means that the variable can only hold one _type_ of data. If the variable is of _type_ `String`, that means you can't assign a number to it.
 
 - Experiment:
 Hold down the Option key and click on the variables `school` and `students` to see a popup window with information about the variable. If we click on `school`, we can see it's a `String`. What type is `students`?
 */

/*:
 We can change the data stored in a variable using the *assignment operator* `=`. The new value must _always_ be the same type as the variable, you can't assign a new value with a different type.
 
 - Experiment:
  Try changing the value of `weeksCompleted` to another integer.
  What happens if you try to change the value to a String like "4"?
  What happens if you try to change the value to a decimal like 4.1?
 */

var weeksCompleted = 4

/*:
 As you can see, you don't have to write the type explicitly. Providing a value when you create a constant or variable lets the compiler _infer_ its type. In the example above, the compiler infers that `students` is an integer because its initial value is an integer.
 
 If the initial value doesn’t provide enough information (or if there is no initial value), specify the type by writing it after the variable, separated by a colon.
 */

let implicitInteger = 70
let implicitDouble = 70.0
let explicitDouble: Double = 70


/*:
 Here are some basic types which you've also seen in Objective-C:

 * String - a collection of characters inside "quotation marks"
 * Bool - either true or false
 * Int - a whole number. ex) 5
 * Double - a decimal number with more precision. ex) 5.55
*/

/*:
 - Experiment:
 Create a constant with an explicit type of `Float` and a value of `4`.
 */


/*:
 - Experiment:
 What type are the variables `tipAmount`, and `isOpen`?
 */

var tipAmount = 6.01
// tipAmount's type is:


var isOpen = true
// isOpen's type is:

/*:
Values are never implicitly converted to another type. If you need to convert a value to a different type, explicitly make an instance of the desired type.
*/

let label = "The width is "
let width = 94
let widthLabel = label + String(width)

/*:
 - Experiment:
 Try removing the conversion to `String` from the last line. What error do you get?
 */

/*:
 - Callout(Challenge):
 I can't think of a challenge for this one but I would love to have 1 or more challenges on each page.
 */


//: [Next](@next)
