//
//  CalendarViewController.swift
//  EWB
//
//  Code taken from tutorial at http://www.appcoda.com/sidebar-menu-swift/

import UIKit

class CalendarViewController: UITableViewController {

    @IBOutlet weak var menuButton: UIBarButtonItem!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        if self.revealViewController() != nil {
            menuButton.target = self.revealViewController()
            // menuButton.action = "revealToggle:" // this gives a warning; line below this solves the issue
            menuButton.action = #selector(SWRevealViewController.revealToggle(_:))
            self.view.addGestureRecognizer(self.revealViewController().panGestureRecognizer())
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}
