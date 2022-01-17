//
//  ViewController.swift
//  animation
//
//  Created by Pooja Mistry on 1/17/22.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        let  swipeleft = UISwipeGestureRecognizer(target: self, action: #selector(swipe))
        swipeleft.direction = UISwipeGestureRecognizer.Direction.left;
        let swiperight = UISwipeGestureRecognizer(target: self, action:#selector(swipe))
        swiperight.direction = UISwipeGestureRecognizer.Direction.right;
    }

    @objc func swipe(gesture : UISwipeGestureRecognizer)
    {
        let swipeGesture = gesture as UISwipeGestureRecognizer
        switch swipeGesture.direction
        {
        case UISwipeGestureRecognizer.Direction.left:
            print(" left gesture ")
        case UISwipeGestureRecognizer.Direction.right :
            print("right gesture")
            
        default:
            break;
        }
    }

}

