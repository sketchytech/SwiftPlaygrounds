//: [Previous](@previous)

//: # UnsafeMutablePointer: Relative memory address
//: In this example, it is decided exactly where the object will be placed in relation to another memory address.
let bStr = UnsafeMutablePointer<String>.alloc(1)
// allocate memory with a type

bStr.initialize("Hello World")
// initialize the memory location

var cStr = bStr.advancedBy(3)
// grab a pointer via advancedBy (we could also use successor and predecessor functions here

cStr.initialize("Hello World")
// initialize the memory location

cStr.memory = "Hi World"
// change the value

cStr.memory // "Hi World"

bStr.distanceTo(cStr) // 3

//: Note: The distanceTo value is 3 because we only advanced by 3 memory addresses. It's not something you need to do, or something that I'd recommend doing unless you are a highly-experienced memory management expert. I'm simply explaining what's there and what can be done, not what should be done!

//: [Next](@next)
