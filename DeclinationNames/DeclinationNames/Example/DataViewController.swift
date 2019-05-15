//
//  DataViewController.swift
//  DeclinationNames
//
//  Created by Sergey Balashov on 15/05/2019.
//  Copyright © 2019 Sergey Balashov. All rights reserved.
//

import Foundation
import UIKit

class DataViewController: UITableViewController {
    var dataSource: [String] = []
}

extension DataViewController {

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return dataSource.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell(style: .default, reuseIdentifier: "cell")
        cell.textLabel?.text = dataSource[indexPath.row]
        return cell
    }
}
