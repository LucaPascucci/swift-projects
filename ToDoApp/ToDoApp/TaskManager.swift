//
//  TaskManager.swift
//  ToDoApp
//
//  Created by Luca Pascucci on 31/10/14.
//  Copyright (c) 2014 Luca Pascucci. All rights reserved.
//

import UIKit

var taskMgr: TaskManager = TaskManager()

struct task{
    var name = "Un-Named"
    var desc = "Un-Described"
}
class TaskManager: NSObject {

    var tasks = [task]()
    
    func addTask(name: String, desc : String){
        tasks.append(task(name: name, desc: desc))
    }
    
}
