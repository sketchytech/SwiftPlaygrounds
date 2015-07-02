//: [Previous](@previous)

//: # UnsafeMutablePointer
//: ## The basics
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


//: The code I hope is clear enough from the comments. 

//: [Next](@next)
