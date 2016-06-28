//
//  MenuViewController.swift
//  EWB
//

import UIKit

class MenuViewController: UITableViewController {
    
    @IBOutlet weak var twitterLabel: UILabel!
    @IBOutlet weak var calendarLabel: UILabel!
    @IBOutlet weak var projectsLabel: UILabel!
    
    let primaryColor = UIColor(red: 0.153, green: 0.345, blue: 0.561, alpha: 1.0)
    
    // underlines the given label
    func addUnderline(label: UILabel) {
        label.attributedText = NSAttributedString(string: label.text!, attributes: [NSUnderlineStyleAttributeName: NSUnderlineStyle.StyleThick.rawValue, NSUnderlineColorAttributeName: primaryColor])
    }
    
    // removes underline from given label
    func removeUnderline(label: UILabel) {
        label.attributedText = NSAttributedString(string: label.text!, attributes: [NSUnderlineStyleAttributeName: NSUnderlineStyle.StyleNone.rawValue])
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // underline twitterLabel since it's the first page the user lands on
        addUnderline(twitterLabel)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        if indexPath.row == 0 {
            removeUnderline(calendarLabel)
            removeUnderline(projectsLabel)
            addUnderline(twitterLabel)
        } else if indexPath.row == 1 {
            removeUnderline(twitterLabel)
            removeUnderline(projectsLabel)
            addUnderline(calendarLabel)
        } else if indexPath.row == 2 {
            removeUnderline(twitterLabel)
            removeUnderline(calendarLabel)
            addUnderline(projectsLabel)
        }
    }
    
}
