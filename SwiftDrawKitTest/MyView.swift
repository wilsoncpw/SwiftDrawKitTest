//
//  MyView.swift
//  SwiftDrawKitTest
//
//  Created by Colin Wilson on 15/02/2019.
//  Copyright © 2019 Colin Wilson. All rights reserved.
//

import Cocoa
import SwiftDrawKit

class MyView: NSView {

    override func draw(_ dirtyRect: NSRect) {
        super.draw(dirtyRect)

        let c = bounds.width > bounds.height ? bounds.height : bounds.width
        
//        let r = NSRect (origin: bounds.origin, size: CGSize (width: c, height: c)).insetBy(dx: 40, dy: 40)
        
        let r = bounds.insetBy(dx: 40, dy: 40)
        
//        let path = NSBezierPath (ovalIn: r)
        
//        let path = NSBezierPath (rect: r)
        
        let path = NSBezierPath ()
        
        path.move(to: r.origin)
        path.line(to: NSMakePoint (r.origin.x + r.width, r.origin.y))
        path.appendArc(from: NSMakePoint (r.origin.x + r.size.width, r.origin.y + r.size.height), to: NSMakePoint (r.origin.x, r.origin.y + r.size.height), radius: 100)
        //path.close()
            
        
        path.stroke()
        
//        try? path.drawTextOnPath(NSAttributedString (string: "The cat sat on the mat"), yOffset: 10, layoutManager: nil, cache: nil)
//        try? path.drawTextOnPath(NSAttributedString (string: "The frog sat on the bog"), yOffset: 30, layoutManager: nil, cache: nil)
        try? path.drawTextOnPath(NSAttributedString (string: "Mrs cat was busy knitting.  Didn't notice soon enough.  Kittens underneath the table.  Saucy Smoke and frisky Fluff.  Didn't spot their little antics.  Till at last she gave a pull.  Said 'Oh dear!  What can have happened.  To my ball of knitting wool"), yOffset: 10, layoutManager: nil, cache: nil)

//        path.drawStringOnPath("Hello World")
        
        let l = path.length
        
        print (r.width, ":", l)    }
    
}
