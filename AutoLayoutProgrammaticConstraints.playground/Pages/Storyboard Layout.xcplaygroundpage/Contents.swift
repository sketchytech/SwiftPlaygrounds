//: [Previous](@previous)
/*:
# Storyboard Layout
Let's suppose we drag out a view onto a view controller in a storyboard. And then control drag a constraint to the left side. Releasing the click and selecting "Leading space to container margin" from the list of options that appears. 

![View 1](view_one_constraint.tiff)

If the Document Outline View is open then you will see a new blue icon appear there, if not then click on the bottom left icon of the storyboard pane to open the Document Outline View. Now open out the blue Constraints icon and select the constraint that has newly been created. 

![View 2](blue_constraint.tiff)

With the the blue icon that is followed by the text "leadingMargin = View.leading" highlighted look now to the Attributes Inspector. This can be opened with alt + cmd + 4 and appears on the right side of the Xcode window.

![View 3](attributes.tiff)

In code this looks like this

    let constraint = NSLayoutConstraint(item: self.view, attribute:
        NSLayoutAttribute.LeadingMargin, relatedBy: NSLayoutRelation.Equal, toItem: 
        view, attribute: NSLayoutAttribute.Leading, multiplier: 1, constant: 0))

The item corresponding directly to "First Item" (excluding the dot and what comes after), attribute corresponding to the item after the dot in the first item field, relatedBy corresponding to "Relation", toItem corresponding to "Second Item", attribute corresponding to the item after the dot in the second item field, multiplier corresponding to "Multiplier" and constant corresponding to "Constant".

If we wished to set the priority, we could do so by writing:

    constraint.priority = 250

Similarly an identifier could be added like so:

    constraint.identifier = "my constraint"

The constraint is then added to an "ancestor" of the view like so:
    
    self.view.addConstraint(constraint)
    
Or since iOS 8 using one of these two approaches:

    NSLayoutConstraint.activateConstraint(constraint)
    constraint.active = true

If you repeat the creation of constraints in all three remaining directions, setting each constant to zero, then you will have all the information that we need to place into our code. And your view will look like this in the storyboard:

![View 4](full_view.tiff)

So now let's see if we can reproduce this in code.
*/

//: [Next](@next)
