//
//  ViewController.swift
//  taskIt
//
//  Created by Bilal Budhani on 10/21/14.
//  Copyright (c) 2014 Bilal Budhani. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {

  
  @IBOutlet var tableView: UITableView!
  
  var taskArray: [Dictionary<String,String>] = []
  
  override func viewDidLoad() {
    super.viewDidLoad()
    // Do any additional setup after loading the view, typically from a nib.
    
    let task1:Dictionary<String, String> = ["task" : "Study", "subtask" : "French", "date":"Yesterday"]

    let task2:Dictionary<String, String> = ["task" : "Learn", "subtask" : "Swift", "date":"Today"]

    let task3:Dictionary<String, String> = ["task" : "Eat", "subtask" : "Food", "date":"Tomorrow"]
    
    taskArray = [task1, task2, task3]
  }

  override func didReceiveMemoryWarning() {
    super.didReceiveMemoryWarning()
    // Dispose of any resources that can be recreated.
  }
  
  func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
    println("Task array \(taskArray.count)")
    return taskArray.count
  }
  
  func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
    
    println("Index path \(indexPath.row)")
    
    let taskDict:Dictionary = taskArray[indexPath.row]
    
    var cell: TaskCell = tableView.dequeueReusableCellWithIdentifier("myCell") as TaskCell
    
    cell.taskLabel.text = taskDict["task"]
    cell.subTaskLabel.text = taskDict["subTask"]
    cell.dateLabel.text = taskDict["date"]
    
    return cell
  }
  
  func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
    
  }

}

