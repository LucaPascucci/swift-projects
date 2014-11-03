//
//  ViewController.swift
//  BlurrySideBar
//
//  Created by Luca Pascucci on 31/10/14.
//  Copyright (c) 2014 Luca Pascucci. All rights reserved.
//

import UIKit

class ViewController: UIViewController , SideBarDelegate{

    @IBOutlet var imageView: UIImageView!
    var sideBar:SideBar = SideBar()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        imageView.image = UIImage(named: "Starry-Norway")
        sideBar = SideBar(sourceView: self.view, menuItems: ["first item", "second item"])
        sideBar.delegate = self
        //sideBar.delegate?.sideBarDidSelectButtonAtIndex(0)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    func sideBarDidSelectButtonAtIndex(index: Int) {
        if index == 0{
            imageView.backgroundColor = UIColor.redColor()
            imageView.image = nil
        } else if index == 1{
            imageView.backgroundColor = UIColor.clearColor()
            imageView.image = UIImage(named: "Starry-Norway")
        }
    }
}

