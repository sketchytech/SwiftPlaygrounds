//: [Previous](@previous)


//: # Nested arrays
//: Returning to nested arrays, let's look at the way our initial and joining values are interjected
["four"].join([["one","two","three"],["five","six","seven"]]) // ["one", "two", "three", "four", "five", "six", "seven"]
//: With join() this happens between array items.
[["one","two","three"],["five","six","seven"]].reduce(["four"],combine:{$0 + $1}) // ["four", "one", "two", "three", "five", "six", "seven"]
//:  With reduce() our interjected value is placed before the other values and recurrs only once (hence it is called an initial value), whereas if we had three or more values in the join() array our joining value would be placed between each set of values in each array.
["four"].join([["one","two","three"],["five","six","seven"],["eight","nine","ten"]]) // ["one", "two", "three", "four", "five", "six", "seven", "four", "eight", "nine", "ten"]

//: [Next](@next)
