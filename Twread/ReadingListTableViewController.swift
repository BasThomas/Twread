//
//  ReadingListTableViewController.swift
//  Twread
//
//  Created by Bas Thomas Broek on 12/10/2017.
//  Copyright © 2017 Bas Thomas Broek. All rights reserved.
//

import UIKit

class ReadingListTableViewController: UITableViewController {
  
  override func viewDidLoad() {
    super.viewDidLoad()
  }
}

// MARK - Data Source
extension ReadingListTableViewController {
  
  override func numberOfSections(in tableView: UITableView) -> Int {
    return 1
  }
  
  override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
    return 0
  }
  
  override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
    let cell = tableView.dequeueReusableCell(withIdentifier: "reuseIdentifier", for: indexPath)
    
    // Configure the cell...
    
    return cell
  }
}
