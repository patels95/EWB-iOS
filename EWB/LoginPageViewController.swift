//
//  LoginPageViewController.swift
//  EWB
//
//  Created by Adam Elass on 11/10/15.
//  Copyright © 2015 Adam Elass. All rights reserved.
//

import UIKit

class LoginPageViewController: UIViewController {

    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func enterApp(sender: AnyObject) {
        self.performSegueWithIdentifier("gotoreveal", sender: self)
    }
    
    
//    override func performSegueWithIdentifier(identifier: String, sender: AnyObject?) {
//        
//    }

}

