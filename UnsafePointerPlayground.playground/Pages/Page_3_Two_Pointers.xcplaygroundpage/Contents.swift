//: [Previous](@previous)

//: # UnsafeMutablePointer
//: ## Two pointers one address
//: Using the hashValue we can initialise an UnsafeMutablePointer to point at an identical memory location. This is demonstrated here:
let bStr = UnsafeMutablePointer<String>.alloc(1)
// allocate memory with a type

bStr.initialize("Hello World")
// initialize the memory location

let hashV = bStr.hashValue
// retrieve memory address

let dStr = UnsafeMutablePointer<String>(bitPattern: hashV)
// set up a second pointer

dStr.memory = "Hi ya"
// change the value

bStr.memory // "Hi ya"
// evidence that it is the same memory location

bStr.move() // "Equivalent to reading `memory` property and calling `destroy()` /// but more efficient." (Apple)

bStr.dealloc(1) // dealloc
// value of dStr will now be nil, because memory has been deallocated and the object destroyed


//: [Next](@next)
