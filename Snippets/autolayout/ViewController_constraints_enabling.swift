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
        
        //When the constraints are added by code it is required to set the translatesAutoresizingMaskIntoConstraints property to false
        redView.translatesAutoresizingMaskIntoConstraints = false
        label.translatesAutoresizingMaskIntoConstraints = false
        
        /************************** Add this code ****************************/
    }
    
    
}


