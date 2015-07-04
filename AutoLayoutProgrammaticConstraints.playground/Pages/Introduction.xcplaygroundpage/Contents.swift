

/*:
# Auto Layout
## Programmatic Constraints
I want to start this playground with a brief list of points that are often skipped over in tutorials and I think might be useful to people seeking answers:

1. Setting constraints programmatically you must set all subviews to subView.translatesAutoresizingMaskIntoConstraints = false (but not self.view).
2. The [metrics](http://code.tutsplus.com/tutorials/introduction-to-the-visual-format-language--cms-22715) parameter inside the NSLayoutConstraint.constraintsWithVisualFormat() type method, which most tutorials set to nil is a dictionary that can be used instead of placing numbers directly into the strings. For example, we might have a key called "spacing" and set its value to 20 inside the metrics dictionary. Now instead of writing 20 in a visual format string we can write "spacing".
3. If you want to work with multipliers then you'll need to use the regular NSLayoutConstraint initializer. Visual Format Language is of no use here (unless you want to reapply constraints on size changes and write the code to do this).
4. When using visual format language (VFL) you must set a value for options. No longer can it be nil, as you will find in many tutorials. These NSLayoutFormatOptions are [best explained here](http://iosdevelopmentjournal.com/blog/2013/04/22/alignment-options-in-auto-laytout).
5. Responding to size classes programmatically means responding to changes in [Size Classes](http://www.digistarters.com/swift-autolayout-and-size-classes-programmatically/). There are no addConstraintForSizeClass() or traitCollectionDidChange() methods. Instead our app must know when the size has changed, using viewWillTransitionToSize(), and respond appropriately.
6. In iOS 9 we have new classes for controlling layout: [UILayoutGuide](https://developer.apple.com/library/prerelease/ios/documentation/UIKit/Reference/UILayoutGuide_Class_Reference/index.html#//apple_ref/occ/cl/UILayoutGuide), [NSLayoutAnchor](https://developer.apple.com/library/prerelease/ios/documentation/AppKit/Reference/NSLayoutAnchor_ClassReference/index.html#//apple_ref/occ/cl/NSLayoutAnchor) and [NSLayoutDimension](https://developer.apple.com/library/prerelease/ios/documentation/AppKit/Reference/NSLayoutDimension_ClassReference/index.html#//apple_ref/occ/cl/NSLayoutDimension). These reduce the amount of code that needs to be written. Unfortunately while they work in the simulator, currently playgrounds do not support them. And of course if backwards compatibility is your aim then you'll still need to learn the old ways of doing things.
7. Since iOS 8 you no longer need to add constraints to an "ancestor" view, you simply need to activate them.
*/

//: [Next](@next)
