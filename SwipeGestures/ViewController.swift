//
//  ViewController.swift
//  SwipeGestures
//
//  Created by Bilal Arslan on 09/01/15.
//  Copyright (c) 2015 Bilal Arslan. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var alert: UIAlertView?

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        ImplementationsGestures()
        
        alert = UIAlertView()
        alert?.title = "Used Swipe Gesture is:"
        alert?.addButtonWithTitle("Okay")
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    
    //  Implementation of Swipe Gestures
    func ImplementationsGestures() {
        // Left Swipe Gesture
        var leftSwipeGesture: UISwipeGestureRecognizer  = UISwipeGestureRecognizer(target: self, action: "MakeSomeThingUnique:")
        leftSwipeGesture.direction = UISwipeGestureRecognizerDirection.Left
        
        // Right Swipe Gesture
        var rightSwipeGesture: UISwipeGestureRecognizer  = UISwipeGestureRecognizer(target: self, action: "MakeSomeThingUnique:")
        rightSwipeGesture.direction = UISwipeGestureRecognizerDirection.Right
        
        // Up Swipe Gesture
        var upSwipeGesture: UISwipeGestureRecognizer  = UISwipeGestureRecognizer(target: self, action: "MakeSomeThingUnique:")
        upSwipeGesture.direction = UISwipeGestureRecognizerDirection.Up
        
        // Down Swipe Gesture
        var downSwipeGesture: UISwipeGestureRecognizer  = UISwipeGestureRecognizer(target: self, action: "MakeSomeThingUnique:")
        downSwipeGesture.direction = UISwipeGestureRecognizerDirection.Down
        
        // Adding Gestures into the self view's GestureRecogniser.
        self.view.addGestureRecognizer(leftSwipeGesture)
        self.view.addGestureRecognizer(rightSwipeGesture)
        self.view.addGestureRecognizer(upSwipeGesture)
        self.view.addGestureRecognizer(downSwipeGesture)
    }
    
    
    /**
    Decide the what kind of swipe gesture used.
    
    :param: sender = used swipeGesture
    */
    func MakeSomeThingUnique(sender: UISwipeGestureRecognizer) {
        switch(sender.direction){
        case UISwipeGestureRecognizerDirection.Right:
            alert?.message = "Right Swipe"
            break;
        case UISwipeGestureRecognizerDirection.Left:
            alert?.message = "Left Swipe"
            break;
        case UISwipeGestureRecognizerDirection.Up:
            alert?.message = "Up Swipe"
            break;
        case UISwipeGestureRecognizerDirection.Down:
            alert?.message = "Down Swipe"
            break;
        default:
            alert?.message = "Not Swipe"
            break;
        }
        
        alert?.show()
    }

}