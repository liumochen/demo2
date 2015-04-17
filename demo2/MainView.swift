//
//  main.swift
//  demo
//
//  Created by Mochen Liu on 15-4-9.
//  Copyright (c) 2015年 Mochen Liu. All rights reserved.
//

import UIKit

class MainView: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        NSLog("Function called\n\n\n\n")
        if(segue.identifier == "jump"){
            (segue.destinationViewController as CitiesView).cityList = ["guangzhou", "shanghai","chengdu","beijing","fujian"]
            NSLog("segue found, value passed")
        }
    }
    
    
}