//
//  ViewController.swift
//  UserDefaults
//
//  Created by Dmitry Reshetnik on 18.04.2020.
//  Copyright © 2020 Dmitry Reshetnik. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        let defaults = UserDefaults.standard
        defaults.set(25, forKey: "Age")
        defaults.set(true, forKey: "UseTouchID")
        defaults.set(CGFloat.pi, forKey: "Pi")
        defaults.set("Dmitry Reshetnik", forKey: "Name")
        defaults.set(Date(), forKey: "LastRun")
        
        let array = ["Hello", "World"]
        defaults.set(array, forKey: "SavedArray")
        
        let dictionary = ["Name": "Dmitry", "Country": "UA"]
        defaults.set(dictionary, forKey: "SavedDictionary")
        
        let extractedArray = defaults.object(forKey: "SavedArray") as? [String] ?? [String]()
        let extractedDictionary = defaults.object(forKey: "SavedDictionary") as? [String: String] ?? [String: String]()
    }


}

