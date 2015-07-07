//: [Previous](@previous)

import UIKit
import XCPlayground
/*:
# Anchors iOS 9
Using anchors to create constraints is new to iOS 9.
*/
if #available(iOS 9,*) {
    class ViewController: UIViewController {
        
        func buildConstraints() -> Void
        {
            // Initialize
            let subView = UIView()
            
            // Add to the view
            self.view.addSubview(subView)
            //Recognize Auto Layout
            subView.translatesAutoresizingMaskIntoConstraints = false
            
            //Coloring
            subView.backgroundColor = UIColor(red: 135/255, green: 222/255, blue: 212/255, alpha: 1)
            
            
//: Here view anchors (introduced in iOS 9) control constraints. The shorthand .active is used. This is supported with reqular constraints as well (from iOS 8 forwards).
            
            subView.leadingAnchor.constraintEqualToAnchor(view.leadingAnchor).active = true
            subView.trailingAnchor.constraintEqualToAnchor(view.trailingAnchor).active = true
            subView.bottomAnchor.constraintEqualToAnchor(view.bottomAnchor).active = true
            subView.topAnchor.constraintEqualToAnchor(view.topAnchor).active = true
//: **Important Note**: In real use I would replace view.topAnchor with         topLayoutGuide.bottomAnchor and view.bottomAnchor with bottomLayoutGuide.topAnchor to avoid the view going under the status bar. However, to do so here prevents the view from currently rendering correctly. It might be that
        }
        
        override func viewDidAppear(animated: Bool) {
            
            super.viewDidAppear(animated)
            // Do any additional setup after loading the view, typically from a nib.
            
            buildConstraints()
            self.view.backgroundColor = UIColor.whiteColor()
            
        }
        
        
    }
    let aVC = ViewController()
    XCPShowView("myAnchorView", view: aVC.view)
}
//: **Note**: To see the view you must have the timeline file open. If it is not displayed, tap on the two interlinking circles icon along the top right row of buttons. To the right you should see the view. And if you have problems loading then close the pane and open again.

//: [Next](@next)
