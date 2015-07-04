//: [Previous](@previous)

/*:
# A note on Multipliers
This is a brief note to state that Visual Format Layout (VFL) does not support multipliers, however if we wish, for example, to make our view half the width of the screen in the first NSLayoutConstraint example we'd replace the code for the first constraint with the following:

    let const1 = NSLayoutConstraint(item: view, attribute: NSLayoutAttribute.TrailingMargin, relatedBy: NSLayoutRelation.Equal, toItem: subView, attribute: NSLayoutAttribute.TrailingMargin, multiplier: 2, constant: 0)

And in our iOS 9 anchor example, the following code:

    subView.trailingAnchor.constraintEqualToAnchor(view.trailingAnchor).active = true

Would be replaced with:

    subView.widthAnchor.constraintEqualToAnchor(self.view.widthAnchor, multiplier: 0.5).active = true

This isn't necessarily a reason to abandon VFL, because remember you can mix and match constraint creation. The only thing to be aware of is that you cannot use the anchor approach pre-iOS 9 and you can't use .active or .activateConstraints() pre-iOS 8.
*/
