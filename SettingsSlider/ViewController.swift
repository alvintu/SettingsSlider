//
//  ViewController.swift
//  SettingsSlider
//
//  Created by Jo Tu on 10/1/16.
//  Copyright © 2016 alvorithms. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    
    let mainStoryboard = UIStoryboard(name: "Main", bundle: nil)
    
    
    var settingsVC: UIViewController = UIViewController()
    let settingsButton: UIButton = UIButton(type:UIButtonType.Custom)
    var openedSettings : Bool = false




    override func viewDidLoad() {
        super.viewDidLoad()
        
        loadSettingsButtonandVC()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    func loadSettingsButtonandVC(){
        
        settingsVC = mainStoryboard.instantiateViewControllerWithIdentifier("popover") as UIViewController
        
        settingsButton.setImage(UIImage(named: "settings"), forState: UIControlState.Normal)
        settingsButton.addTarget(self, action: #selector(self.openSettings), forControlEvents: UIControlEvents.TouchUpInside)
        settingsButton.frame = CGRectMake(0, 0, 20, 20)
        let barButton = UIBarButtonItem(customView: settingsButton)
        self.navigationItem.leftBarButtonItem = barButton
        
        
        self .addChildViewController(settingsVC) //popover content is settingsvc
        settingsVC.view.frame = CGRectMake(-500, 40, self.view.frame.size.width, self.view.frame.size.height/3+10)
        
        settingsVC.view.backgroundColor = UIColor.blueColor()  //made this blue to let user see what's going on comment this out if neccesary
        
        view.addSubview(settingsVC.view)
        
        
    }
    
    func openSettings() {
        
        if(openedSettings){
            openedSettings = false
            
            
            UIView .animateWithDuration(0.4, animations: {
                self.settingsVC.view.frame = CGRectMake(-500, 40, self.view.frame.size.width, self.view.frame.size.height/3+10)
                self.settingsButton.setImage(UIImage(named: "settings"), forState: UIControlState.Normal)
                
            })
            
        }
        else{
            openedSettings = true
            
            
            UIView .animateWithDuration(0.3, animations: {
                self.settingsVC.view.frame = CGRectMake(-100, 40, self.view.frame.size.width, self.view.frame.size.height/3+10)
                self.settingsButton.setImage(UIImage(named: "exit"), forState: UIControlState.Normal)
                
                
            })
            
            
        }
        
        
        
        
    }
    
}
    


