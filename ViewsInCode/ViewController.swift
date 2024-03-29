//
//  ViewController.swift
//  ViewsInCode
//
//  Created by Craig Grummitt on 13/04/2016.
//  Copyright © 2016 Craig Grummitt. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
  var redView:UIView!
  var label:UILabel!
  
  override func viewDidLoad() {
    super.viewDidLoad()
    view.backgroundColor = UIColor.yellow
    redView = UIView(frame: CGRect(x: 0, y: 0,
                                   width: view.bounds.width, height: view.bounds.height / 2))
    redView.backgroundColor = UIColor.red
    view.addSubview(redView)
    
    
    label = UILabel(frame:
      CGRect(x: 20, y: self.view.bounds.height / 2,
             width: 20, height: 20))
    view.addSubview(label)
    label.text = "Hello World"
    label.font = label.font.withSize(40)
    label.sizeToFit()
    //Define the constraints for the labels by code
    let constraints:[NSLayoutConstraint] = [
        //red view
        redView.topAnchor.constraint(equalTo: view.topAnchor),
        redView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
        redView.trailingAnchor.constraint(equalTo: view.trailingAnchor),
        redView.heightAnchor.constraint(equalTo: view.heightAnchor,
                                        multiplier: 0.5),
        //label
        label.topAnchor.constraint(equalTo: redView.bottomAnchor, constant: 8), label.leadingAnchor.constraint(equalTo:
            view.layoutMarginsGuide.leadingAnchor)
    ]
    //Apply the constraints
    NSLayoutConstraint.activate(constraints)
    //When the constraints are added by code it is required to set the translatesAutoresizingMaskIntoConstraints property to false
    redView.translatesAutoresizingMaskIntoConstraints = false
    label.translatesAutoresizingMaskIntoConstraints = false
    
  }
  override func didReceiveMemoryWarning() {
    super.didReceiveMemoryWarning()
    // Dispose of any resources that can be recreated.
  }
}
