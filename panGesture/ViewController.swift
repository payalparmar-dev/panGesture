//
//  ViewController.swift
//  panGesture
//
//  Created by Payal on 24/01/20.
//  Copyright © 2020 mokshitpu. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var imageV: UIImageView!
    @IBOutlet weak var img: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let recognizer = UIPanGestureRecognizer(target: self, action: #selector(handlePan(recognizer:)))
    imageV.addGestureRecognizer(recognizer)
        img.addGestureRecognizer(recognizer)
    }
    @IBAction func handlePan(recognizer : UIPanGestureRecognizer)
    {
        if recognizer.state == .began || recognizer.state == .changed {
       
          let translation = recognizer.translation(in: self.view)
            recognizer.view!.center = CGPoint(x: recognizer.view!.center.x + translation.x,
                                              y:recognizer.view!.center.y + translation.y)
        recognizer.setTranslation(CGPoint.zero, in: self.view)
        }
    }

}

