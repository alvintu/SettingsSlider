//
//  SettingsController.swift
//  Mealdeals
//
//  Created by Jo Tu on 9/11/16.
//  Copyright © 2016 hellotojello. All rights reserved.
//

import UIKit

class SettingsController: UIViewController,UITableViewDelegate,UITableViewDataSource {
    
    @IBOutlet weak var tableView: UITableView!
    let mainStoryboard = UIStoryboard(name: "Main", bundle: nil)

    var prefVC : UIViewController = UIViewController()
    var suggestionsVC : UIViewController = UIViewController()
    var messagesVC : UIViewController = UIViewController()
    

    

    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.tableView.tableFooterView = UIView.init(frame: CGRectZero)
        self.tableView.scrollEnabled = false;



        // Do any additional setup after loading the view, typically from a nib.
    }
    
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCellWithIdentifier("settingsCell", forIndexPath: indexPath) as! SettingsCell
        cell.selectionStyle = UITableViewCellSelectionStyle.None

        switch indexPath {
        case NSIndexPath(forRow: 0, inSection: 0) :
            cell.nameLabel.text = "Preferences"
        case NSIndexPath(forRow: 1, inSection: 0) :
            cell.nameLabel.text = "Suggest a Shop"
            
            
        case NSIndexPath(forRow: 2, inSection: 0) :
            
            cell.nameLabel.text = "Message Us"
            
        default:
            cell.nameLabel.text = "failed"
        }

        return cell
        
        
    }
    func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 3
    }
    
    func tableView(tableView: UITableView, heightForFooterInSection section: Int) -> CGFloat {
        
        return 0;
    }
    
    
    func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
//        let vc = mainStoryboard.instantiateViewControllerWithIdentifier("infoVC") as! InfoViewController
//        passedShop = dao.shops[indexPath.section]
//        vc.currentShop = passedShop
//        self.navigationController!.pushViewController(vc, animated: true)
        switch indexPath {
        case NSIndexPath(forRow: 0, inSection: 0) :
//            print("Preferences")
            
            self.navigationController!.pushViewController(prefVC, animated: true)

            
        case NSIndexPath(forRow: 1, inSection: 0) : // do something
            print("Suggest a Shop")
            self.navigationController!.pushViewController(suggestionsVC, animated: true)

            
        case NSIndexPath(forRow: 2, inSection: 0) : // do something
            print("Message Us")
            self.navigationController!.pushViewController(messagesVC, animated: true)


        default:
            print("nothing")
        }
    }
}
