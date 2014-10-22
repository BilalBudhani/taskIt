//
//  TaskCell.swift
//  taskIt
//
//  Created by Bilal Budhani on 10/21/14.
//  Copyright (c) 2014 Bilal Budhani. All rights reserved.
//

import UIKit

class TaskCell: UITableViewCell {

  @IBOutlet var taskLabel: UILabel!
  @IBOutlet var subTaskLabel: UILabel!
  @IBOutlet var dateLabel: UILabel!
  
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
