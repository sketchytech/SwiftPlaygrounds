//: [Previous](@previous)

//: # flatMap()
//: Using flatMap() there is no initial value, it always returns an array of whichever type is generated, it also doesn't allow access to the cumulating initial value (represented as $0 in the reduce() function).
let a = [["one","two","three"],["five","six","seven"],["eight","nine","ten"]].flatMap{$0 + ["four"]}
a // ["one", "two", "three", "four", "five", "six", "seven", "four", "eight", "nine", "ten", "four"]
//: It is very easy for reduce to emulate flatMap().
let b = [["one","two","three"],["five","six","seven"],["eight","nine","ten"]].reduce([],combine:{$0 + $1 + ["four"]})
b // ["one", "two", "three", "four", "five", "six", "seven", "four", "eight", "nine", "ten", "four"]
//: But the complexity of attempting to make flatMap() mimic reduce() using enumerate() would cause the compiler to complain.

//: [Next](@next)
