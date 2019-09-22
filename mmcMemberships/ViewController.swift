//
//  ViewController.swift
//  mmcMemberships
//
//  Created by Sergio Nunez on 9/16/19.
//  Copyright © 2019 Omega One Developers. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Will make the navigation bar transparent
        self.navigationController?.navigationBar.setBackgroundImage(UIImage(), for:  .default)
        self.navigationController?.navigationBar.shadowImage = UIImage()
        self.navigationController?.navigationBar.isTranslucent = true
        
    }


}

