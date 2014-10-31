//
//  ViewController.swift
//  CounterApp
//
//  Created by Luca Pascucci on 31/10/14.
//  Copyright (c) 2014 Luca Pascucci. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var timer = NSTimer()
    var counter = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        labelCounter.text = String(counter)
    }

    @IBOutlet var labelCounter: UILabel!
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


    @IBAction func startCounterPressed(sender: AnyObject) {
        timer = NSTimer.scheduledTimerWithTimeInterval(1, target: self, selector: ("update"), userInfo: nil, repeats: true)
    }
    
    func update(){
        labelCounter.text = String(counter++)
    }
    @IBAction func stopCounterPressed(sender: AnyObject) {
        timer.invalidate()
    }
    @IBAction func clearPressed(sender: AnyObject) {
        timer.invalidate()
        counter = 0
        labelCounter.text = String(counter)
    }
}

