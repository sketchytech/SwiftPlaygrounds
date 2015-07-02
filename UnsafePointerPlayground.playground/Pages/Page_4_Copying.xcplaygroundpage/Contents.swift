//: [Previous](@previous)

//: # UnsafeMutablePointer
//: ## Copying from a memory address
//: There are a few other tricks up the UnsafeMutablePointer's sleeve. One of them is initializeFrom(), which enables us to copy the raw memory of a pointer (and any number of successive pointers) like so:
let bStr = UnsafeMutablePointer<String>.alloc(1)
// allocate memory with a type

bStr.initialize("Hello World")
// initialize the memory location

var dStr = UnsafeMutablePointer<String>.alloc(1)
// set up a second pointer
dStr.initialize("Hello")
// dStr.put("Good")

var eStr = UnsafeMutablePointer<String>.alloc(1)
eStr.initializeFrom(dStr, count: 1)
eStr.memory // Hello
eStr.memory = "Goodbye"

dStr.move() // "Hello"
eStr.move() // "Goodbye"

dStr.dealloc(1)
eStr.dealloc(1)
//: Another is to adopt the SinkType protocol and to have a put() method that releases the object after use.

//: [Next](@next)
