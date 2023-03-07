//
//  SegmentedViewController.swift
//  Sand
//
//  Created by ANSAR DAULETBAYEV on 07.03.2023.
//

import UIKit

class SegmentedViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

      
    }
    

    @IBAction func did(_ sender: UISegmentedControl) {
        if sender.selectedSegmentIndex == 0 {
            view.backgroundColor = .green
        }
        else if sender.selectedSegmentIndex == 1 {
            view.backgroundColor = .red
        }
    }
    
}
