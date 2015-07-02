//: [Previous](@previous)

//: # reduce()
//: Let's look now to reduce. It takes an initial value, which becomes $0 in the following. The first time the combine closure is iterated over the first value is added to the initial string (in this case), this addition then becomes represented the second time it is iterated over so $0 = "" + "one" (i.e. "one") and $1 = "two", and the following and final time it is iterated over $0 = "" + "one" + "two" (i.e. "onetwo"), and $1 = "three".
["one","two","three"].reduce("",combine:{$0 + $1}) // "onetwothree"
//: If we want to add or change anything then this must happen within the closure. For instance if we want to reverse the order of the strings:
["one","two","three"].reduce("",combine:{$1 + $0}) // "threetwoone"
//:  Or if we wanted to add a character between the Strings:
["one","two","three"].reduce("",combine:{$1 + "-" + $0}) // "three-two-one-"
//: But perhaps we want something that isn't always the same, perhaps we want to emulate join()
let strArr = ["one","two","three"]

strArr.enumerate().reduce("",combine:{$0 + $1.element + ($1.index < strArr.endIndex-1 ? "-" : "") }) // "three-two-one"
//: Or we might choose to become more sophisticated than join()
strArr.enumerate().reduce("",combine:{$0 + $1.element + ($1.index < strArr.endIndex-1 ? ", " : ".") }) // "one, two, three."
//: The point is that reduce() while appearing at first similar to join() actually has some more fine-grained abilities if we're willing to accept its greater complexity.


//: [Next](@next)
