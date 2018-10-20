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
        
        let heap = MinIntHeap()
        heap.add(item: 2)
        heap.add(item: 69)
        heap.add(item: 5)
        heap.add(item: 54)
        heap.add(item: 7)
        heap.add(item: 88)
        heap.add(item: 0)
        heap.add(item: 5)
        heap.add(item: 21)
        heap.add(item: 2)
        heap.printHeapArray()
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }



}

