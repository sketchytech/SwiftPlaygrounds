
//: # UnsafeMutablePointer
//: ## Before we begin
//: This playground began life as a [blogpost](http://sketchytech.blogspot.co.uk/2014/10/becoming-less-afraid-of-unsafe-mutable.html). I started that blogpost with a warning, and do the same here: you shouldn't become entangled with pointers in Swift unless you need to become entangled. Often where a pointer is required you can leverage inout properties in Swift using an ampersand (&) placed before a variable name. At the same time don't be afraid of them, because blocking out their existence in your head isn't a wise thing to do either.
//: 
//: There follows some code snippets and an overview of how the UnsafeMutablePointer type might, might not, and in some cases almost definitely should not, be used.
//:
//: Note: If you're unfamiliar with the concepts of memory allocation and memory addresses, then it might be wise to also seek out some information about this topic to make what is written easier to understand.

//: [Next](@next)
