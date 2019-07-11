//
//  ViewController.swift
//  IOS_addPickerView
//
//  Created by Michael Lekrans on 2019-07-11.
//  Copyright © 2019 Michael Lekrans. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UIPickerViewDataSource, UIPickerViewDelegate {
    let data: [[String]] = [
         ["Item1", "Item2", "Item3", "Item4"],
         ["Item A", "Item B", "Item C"],
         ["Item a", "Item b", "Item c", "item d", "item e"]
    ]
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return data.count
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return data[component].count
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return data[component][row]
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

