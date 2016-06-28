//
//  NewAccountViewController.swift
//  EWB
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
    
    @IBAction func cancelNewAccountViewController() {
        dismissViewControllerAnimated(true, completion: nil);
    }
    
    @IBAction func submitAccountInformation() {
        
        // UIAlertController code taken/based on info at https://github.com/codepath/ios_guides/wiki/Using-UIAlertController
        let alertController = UIAlertController(title: "Missing the following fields:\n", message: "", preferredStyle: .Alert)
        
        var missing = false
        if (firstName.text == "") {
            alertController.title! += "First Name\n"
            missing = true
        }
        if (lastName.text == "") {
            alertController.title! += "Last Name\n"
            missing = true
        }
        if (email.text == "") {
            alertController.title! += "Email\n"
            missing = true
        }
        if (password.text == "") {
            alertController.title! += "Password\n"
            missing = true
        }
        if (passwordAgain.text == "") {
            alertController.title! += "Enter Password Again"
            missing = true
        }
        
        let OKAction = UIAlertAction(title: "OK", style: .Default) { (action) in
            // do nothing?
        }
        alertController.addAction(OKAction)
        
        if (missing) {
            presentViewController(alertController, animated: true) {
                // do something after presenting done?
            }
        } else {
            let user = PFUser()
            user.username = email.text
            user["firstName"] = firstName.text
            user["lastName"] = lastName.text
            user["password"] = password.text
            user["passwordAgain"] = passwordAgain.text
            print(user)
        }

    }

}
