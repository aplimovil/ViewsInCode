//
//  ViewController_constraints_definition.swift
//  ViewsInCode
//
//  Created by Francisco Martinez on 6/18/19.
//  Copyright © 2019 Craig Grummitt. All rights reserved.
//

class ViewController: UIViewController {
    
    override func viewDidLoad() {
        
        /************************** Add this code ****************************/
        
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
        
        /************************** Add this code ****************************/
    }
    
    
}

