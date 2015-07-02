//: [Previous](@previous)


//: # Afterword
//: Following the completion of this playground I was encouraged by [@Al_Skipp](http://twitter.com/al_skipp) to place additional emphasis on the power of reduce() by illustrating how it can be used to reverse, map, filter and join. This task can be achieved like so:

"!tfiwS olleH".characters.reduce("", combine: {String($1) + $0})  // reverse
[1,2,3,4,5,6].reduce([String](), combine: {$0 + [String($1)]})  // map
"Heallo Swift!".characters.reduce("", combine: {$0 + ($1 == "a" ? "" : String($1))}) // filter
"Hello Swift!".characters.enumerate().reduce("",combine:{$0 + String($1.element) + ($1.index < "Hello Swift!".characters.count-1 ? "_" : "") }) // join
//: And is something to be aware of when deciding which function best fits your requirements at any given time.

//: [Next](@next)
