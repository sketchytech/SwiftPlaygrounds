//: [Previous](@previous)
import UIKit
import XCPlayground
class ViewController: UIViewController {
//: First a function is built to add a view and apply constraints
    func buildConstraints () {
        // create subview before creating constraints
        let subView = UIView()
        subView.backgroundColor = UIColor(red: 135/255, green: 222/255, blue: 212/255, alpha: 1)
        // add subview before adding constraints
        self.view.addSubview(subView)
//: This is an important piece of code, setting the translatesAutoresizingMaskIntoConstraints property to false means that the view we've created is aware of the auto layout constraints placed upon it:
        // essential to apply NSLayoutConstraints programatically
        subView.translatesAutoresizingMaskIntoConstraints = false
//: Now the constraints are built, replicating exactly the storyboard values that we saw how to access on the previous page:
        // trailing margin constraint
        let const1 = NSLayoutConstraint(item: view, attribute: NSLayoutAttribute.TrailingMargin, relatedBy: NSLayoutRelation.Equal, toItem: subView, attribute: NSLayoutAttribute.TrailingMargin, multiplier: 1, constant: 0)
        // top constraint
        let const2 = NSLayoutConstraint(item: subView, attribute: NSLayoutAttribute.Top, relatedBy: NSLayoutRelation.Equal, toItem:topLayoutGuide, attribute: NSLayoutAttribute.Bottom, multiplier: 1, constant: 0)
        // bottom constraint
        let const3 = NSLayoutConstraint(item: bottomLayoutGuide, attribute: NSLayoutAttribute.Top, relatedBy: NSLayoutRelation.Equal, toItem:subView, attribute: NSLayoutAttribute.Bottom, multiplier: 1, constant: 0)
        // leading margin constraint
        let const4 = NSLayoutConstraint(item: subView, attribute: NSLayoutAttribute.Leading, relatedBy: NSLayoutRelation.Equal, toItem:self.view, attribute: NSLayoutAttribute.LeadingMargin, multiplier: 1, constant: 0)
//: Next we activate the constraints (pre-iOS 8 we would've used self.view.addConstraints() to attach constraints to the subview's "ancestor"):
        NSLayoutConstraint.activateConstraints([const1, const2, const3, const4])
    }
//: when the view has loaded the above funcion is called and the result is as we expect.
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        self.view.backgroundColor = UIColor.whiteColor()
        
        buildConstraints()
        
    }
    
}

let aVC = ViewController()
XCPShowView("constView", view: aVC.view)
//: **Note**: To see the view you must have the timeline file open. If it is not displayed, tap on the two interlinking circles item along the top right row of buttons. To the right you should see the view. And if you have problems loading then close the pane and open again.

//: The view does not have a status bar visible, because it is not a full emulation of a device but when run on a device or in the simulator your view will not run under the status bar.

//: [Next](@next)
