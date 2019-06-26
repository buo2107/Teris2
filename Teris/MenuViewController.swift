//
//  MenuViewController.swift
//  Teris
//
//  Created by User02 on 2019/6/21.
//  Copyright © 2019 User21. All rights reserved.
//

import UIKit
import PageMenu
var pageMenu : CAPSPageMenu?

class MenuViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        var controllerArray : [UIViewController] = []
        
        let controller1 : UIViewController = UIViewController()
        controller1.view.backgroundColor = .red
        controller1.title = "User Data"
        controllerArray.append(controller1)
        
        let controller2 : UIViewController = UIViewController()
        controller2.view.backgroundColor = .orange
        controller2.title = "Music"
        controllerArray.append(controller2)
        
        let controller3 : UIViewController = UIViewController()
        controller3.view.backgroundColor = .green
        controller3.title = "Grades"
        controllerArray.append(controller3)
        
        let controller4 : UIViewController = UIViewController()
        controller4.view.backgroundColor = .blue
        controller4.title = "Set"
        controllerArray.append(controller4)
        
        pageMenu = CAPSPageMenu(viewControllers: controllerArray, frame: CGRect(x: 0.0, y: 50.0, width: self.view.frame.width, height: 100), pageMenuOptions: nil)
        
        self.view.addSubview(pageMenu!.view)
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
