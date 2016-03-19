//
//  ProjectsViewController.swift
//  EWB
//
//  Created by Adam Elass on 3/19/16.
//  Copyright © 2016 Adam Elass. All rights reserved.
//
//  Code taken from tutorial at http://www.appcoda.com/sidebar-menu-swift/

import UIKit

class ProjectsViewController: UITableViewController {

    @IBOutlet weak var menuButton: UIBarButtonItem!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        if self.revealViewController() != nil {
            menuButton.target = self.revealViewController()
            menuButton.action = "revealToggle:"
            self.view.addGestureRecognizer(self.revealViewController().panGestureRecognizer())
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}
