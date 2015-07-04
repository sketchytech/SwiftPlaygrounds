//: [Previous](@previous)

//: # Visual Layout Format
//: One of the first things to note before we even start with Visual Layout Format is that "H:|-[view]-|" represents a view with its sides against the margins of the superview, whereas "H:|[view]|" is a view with its edges against the very edge of the superview. There is no similar grammar for the top and bottom layout guides. You must instead retrieve the length property of the guides: "V:|-\\(self.topLayoutGuide.length)-[view]-\\(self.bottomLayoutGuide.length)-|". But don't retrieve the value too early in the life of the view. And as you'll see in the code that follows we can replace the interpolation with a metric if desired.

import UIKit
import XCPlayground

class ViewController: UIViewController {
    
//: This is the method that will add a view and create the constraints
    func buildConstraints() -> Void
    {
        //Initialize
        let subView = UIView()
        
        // This makes view aware of auto layout
        subView.translatesAutoresizingMaskIntoConstraints = false
        
        //Coloring
        subView.backgroundColor = UIColor(red: 135/255, green: 222/255, blue: 212/255, alpha: 1)
        
        //Add them to the view
        self.view.addSubview(subView)
    
        let views = ["subview":subView]
//: We use metrics here but an interpolated string (as written above) would have the same end result
        // Metrics for Visual Format string
        let metrics = ["topGuide": topLayoutGuide.length,"bottomGuide": bottomLayoutGuide.length]
//: As noted above, the string used for the horizontal constraints indicates that we wish to respect the (leading and trailing) margins
        // Horizontal constraints
        let horizontalConstraints = NSLayoutConstraint.constraintsWithVisualFormat("H:|-[subview]-|", options: NSLayoutFormatOptions.AlignAllRight, metrics: metrics, views: views)
//: activateConstraints() is an iOS 8 method, pre-iOS 8 we would've used self.view.addConstraints(horizontalConstraints) to attach constraints to the subview's "ancestor".
        NSLayoutConstraint.activateConstraints(horizontalConstraints)

//: There is no syntax to describe a respect of layout guides in the visual format language, so instead we insert it ourselves (but remember when resized, especially on an iPhone, this metric is not recalculated and so we'd need to write the code for doing so in a .viewWillTransitionToSize() method in real use). Be aware also that in the playground's view there is no topLayoutGuide or bottomLayoutGuide, but if this code was used in a simulator then a margin would appear at the top to allow for the status bar.
        //Vertical constraints
        let verticalConstraints = NSLayoutConstraint.constraintsWithVisualFormat("V:|-topGuide-[subview]-bottomGuide-|", options: NSLayoutFormatOptions.AlignAllBottom, metrics: metrics, views: views)
        NSLayoutConstraint.activateConstraints(verticalConstraints)

    }
//: The reason for building the constraints in viewDidAppear() is because it is only then that the topLayoutGuide and bottomLayoutGuide sizes are set.
    override func viewDidAppear(animated:Bool) {
        super.viewDidAppear(animated)
        // Do any additional setup after loading the view, typically from a nib.
        
        buildConstraints()
        
        self.view.backgroundColor = UIColor.whiteColor()
        
    }
    
}
//: The appeal of the Visual Format Language is that we've been able to reduce four constraints down to two. This is because the strings create an array of constraints with a single string. Where initializing constraints individually we needed to work one by one.

let aVC = ViewController()

XCPShowView("vflView", view: aVC.view)
//: **Note**: To see the view you must have the timeline file open. If it is not displayed, tap on the two interlinking circles icon along the top right row of buttons. To the right you should see the view. And if you have problems loading then close the pane and open again.

//: [Next](@next)
