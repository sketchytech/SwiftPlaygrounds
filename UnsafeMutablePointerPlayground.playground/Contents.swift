//: # UnsafeMutablePointer: The basics
//: The basics first of all. We'll allocate memory, initialise the memory with a value, access that stored value and then change the value. Finally, the stored object will be destroyed and the memory deallocated.

let aStr = UnsafeMutablePointer<String>.alloc(1)
// allocate a memory space

aStr.initialize("Hello Swift")
// initialise memory

aStr.memory // "Hello Swift"
// reveals what is in the memory location

aStr.memory = "Hello World"
// change the contents of the memory

aStr.destroy()
// destroy

aStr.dealloc(1)
// dealloc

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
