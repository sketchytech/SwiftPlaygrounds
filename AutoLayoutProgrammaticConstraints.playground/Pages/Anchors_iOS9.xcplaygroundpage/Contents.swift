//: [Previous](@previous)

import UIKit
import XCPlayground
/*:
# Anchors iOS 9
Using anchors to create constraints is new to iOS 9. The following code does not currently render correctly in the view. However, if used in an ordinary app it will it will function correctly. (I expect playground support needs to properly catch up with iOS 9).
*/
if #available(iOS 9,*) {
class ViewController: UIViewController {
    
    func buildConstraints() -> Void
    {
        // Initialize
        let subView = UIView()

        //Recognize Auto Layout
        subView.translatesAutoresizingMaskIntoConstraints = false
        
        //Coloring
        subView.backgroundColor = UIColor(red: 135/255, green: 222/255, blue: 212/255, alpha: 1)
        
        // Add to the view
        self.view.addSubview(subView)
        
//: Here view anchors (introduced in iOS 9) control constraints. The shorthand .active is used. This is supported with reqular constraints as well (from iOS 8 forwards).

        subView.leadingAnchor.constraintEqualToAnchor(view.leadingAnchor).active = true
        subView.trailingAnchor.constraintEqualToAnchor(view.trailingAnchor).active = true
        subView.bottomAnchor.constraintEqualToAnchor(bottomLayoutGuide.topAnchor).active = true
        subView.topAnchor.constraintEqualToAnchor(topLayoutGuide.bottomAnchor).active = true
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        buildConstraints()
        self.view.backgroundColor = UIColor.whiteColor()
        
    }
    
    
}
let aVC = ViewController()
XCPShowView("myAnchorView", view: aVC.view)
}
//: **Note**: To see the view you must have the timeline file open. If it is not displayed, tap on the two interlinking circles item along the top right row of buttons. To the right you should see the view. And if you have problems loading then close the pane and open again.

//: [Next](@next)
