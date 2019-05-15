//
//  ViewController.swift
//  DeclinationNames
//
//  Created by Sergey Balashov on 15/05/2019.
//  Copyright © 2019 Sergey Balashov. All rights reserved.
//

import Foundation
import UIKit

class ViewController: UITableViewController {

    @IBOutlet weak var oneTextField: UITextField!
    
    @IBOutlet weak var formatOneTextField: UITextField!
    @IBOutlet weak var formatTwoTextField: UITextField!
    @IBOutlet weak var formatElevenTextField: UITextField!
    
    private func createDataSource() -> [String] {
        var data: [String] = []
        for i in 0 ..< 40 {
        data.append(Declination.get(localizeNumber: i, forOne: oneTextField.text,
                                    format: (formatOneTextField.text ?? "",
                                             two: formatTwoTextField.text ?? "",
                                             eleven: formatElevenTextField.text ?? "")))
        }
        return data
    }
    
    @IBAction func showResult(_ sender: UIButton) {
        performSegue(withIdentifier: "show_data", sender: nil)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let data = segue.destination as? DataViewController {
            data.dataSource = createDataSource()
        }
    }

}

