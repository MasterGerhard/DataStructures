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
        
        let tree = BinarySearchTree(data:18)
        tree.insert(data: 21)
        tree.insert(data: 7)
        tree.insert(data: 64)
        tree.insert(data: 13)
        tree.insert(data: 2)
        tree.insert(data: 0)
        tree.insert(data: 100)
        tree.insert(data: 101)
        
        print("printing in order:\n")
        tree.printInOrder()
        
        print("printing preorder:\n")
        tree.printPreOrder()
        
        print("printing postorder:\n")
        tree.printPostOrder()
    
        
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }



}

