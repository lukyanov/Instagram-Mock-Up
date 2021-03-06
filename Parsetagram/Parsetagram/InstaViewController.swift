//
//  InstaViewController.swift
//  Parsetagram
//
//  Created by JonLuca De Caro on 10/31/16.
//  Copyright © 2016 JonLuca De Caro. All rights reserved.
//

import UIKit

class InstaViewController: UIViewController {

    @IBOutlet weak var tabBar: UITabBar!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        
        let home = storyboard.instantiateViewController(withIdentifier: "homeView") as! UINavigationController;
        let homeVc = home.topViewController as! HomeViewController
        homeVc.tabBarItem.title = "Home"
        
        let tab = UITabBarController()
        tab.viewControllers = [homeVc]
        
        let window = UIWindow(frame: UIScreen.main.bounds)
        
        window.rootViewController = tab
        window.makeKeyAndVisible()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
