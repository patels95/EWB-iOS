//
//  NewAccountViewController.swift
//  EWB
//
//  Created by Adam Elass on 2/23/16.
//  Copyright © 2016 Adam Elass. All rights reserved.
//

import UIKit
import Parse

class NewAccountViewController: UIViewController {

    @IBOutlet weak var firstName: UITextField!
    @IBOutlet weak var lastName: UITextField!
    @IBOutlet weak var email: UITextField!
    @IBOutlet weak var password: UITextField!
    @IBOutlet weak var passwordAgain: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func submitAccountInformation() {
        let user = PFUser()
        user.username = email.text
        user["firstName"] = firstName.text
        user["lastName"] = lastName.text
        user["password"] = password.text
        user["passwordAgain"] = passwordAgain.text
    }
    

}
