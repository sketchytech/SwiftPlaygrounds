//: [Previous](@previous)

//: # Similarly different
//: ## join(), reduce() and flatMap() in Swift 2

let nestedArray = [[1,2,3,4],[6,7,8,9]]
//: reduce(), flatMap() and join() can produce the same results 
let joined = [].join(nestedArray)
let flattened = nestedArray.flatMap{$0}
let reduced = nestedArray.reduce([], combine: {$0 + $1})

joined // [1, 2, 3, 4, 6, 7, 8, 9]
flattened // [1, 2, 3, 4, 6, 7, 8, 9]
reduced // [1, 2, 3, 4, 6, 7, 8, 9]
//: The differences only real become clear when we want to add elements to the array we're flattening

let joinedPlus = [5].join(nestedArray)
let reducedPlus = nestedArray.reduce([], combine: {$0 + [5] + $1})
let flattenedPlus = nestedArray.flatMap{$0 + [5]}

joinedPlus // [1, 2, 3, 4, 5, 6, 7, 8, 9]
flattenedPlus // [1, 2, 3, 4, 5, 6, 7, 8, 9, 5]
reducedPlus // [5, 1, 2, 3, 4, 5, 6, 7, 8, 9]
//: Look carefully at the position of the 5 in each case.

//: [Next](@next)
