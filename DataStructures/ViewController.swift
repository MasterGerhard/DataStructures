//
//  ViewController.swift
//  DataStructures
//
//  Created by Steven Gerhard on 8/27/18.
//  Copyright © 2018 Gerhard. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        var array = [67,324,1,2,56,23,66,4,1]
        array = array.quickSort()
        print(array)
        print(array.binarySearch(x: 67))
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }



}
