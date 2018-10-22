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
        
        let trie = Trie()
        trie.insert(word: "steven")
        print("is steven a word? : \(trie.search(word: "steven"))")
        trie.insert(word: "ste")

        print("is steven a word? : \(trie.search(word: "steven"))")
        print("is ste a word? : \(trie.search(word: "ste"))")
        print("is stev a word? : \(trie.search(word: "stev"))")
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }



}

