//: [Previous](@previous)

//: # UnsafeMutablePointer
//: ## What's your address?
//: Having gone over the basics, we're able to do some more advanced things. For example, we can access the memory address of the object we've stored and find its successor and predecessor in memory. We can also explore the distance between two stored objects.

let aStr = UnsafeMutablePointer<String>.alloc(1)
// allocate memory with a type

aStr.initialize("Hello World")
// initialize the memory location

let bStr = UnsafeMutablePointer<String>.alloc(1)
// allocate memory with a type

bStr.initialize("Hello World")
// initialize the memory location

bStr.debugDescription
// memory address returned as a hexadecimal (in string format)

bStr.hashValue
// memory address as an integer

bStr.successor().debugDescription
// following memory address

bStr.predecessor().debugDescription
// previous memory address, no guarantee of it being allocated or initialized. Attempt to access memory likely to cause a crash.

bStr.successor().hashValue
// following memory address

bStr.predecessor().hashValue
// previous memory address

bStr.distanceTo(aStr)
// distance between the two memory addresses, must be of same type. This example assumes that aStr hasn't yet been destroyed or deallocated

bStr.move() // move away from location referenced in memory // "Equivalent to reading `memory` property and calling `destroy()` /// but more efficient."

bStr.dealloc(1)
// dealloc

//: [Next](@next)
