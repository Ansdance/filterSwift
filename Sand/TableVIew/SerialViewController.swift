//
//  SerialViewController.swift
//  Sand
//
//  Created by ANSAR DAULETBAYEV on 02.03.2023.
//

import UIKit

class SerialViewController: UIViewController {
    
    @IBOutlet weak var tableView: UITableView!

    @IBOutlet weak var contentView: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.delegate = self
        tableView.dataSource = self
        
       

        tableView.register(UINib(nibName: String(describing: GeneralViewCell.self), bundle: nil), forCellReuseIdentifier: String(describing: GeneralViewCell.self))
    }
    
 }


extension SerialViewController: UITableViewDelegate, UITableViewDataSource {
   
        func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
            3
        }
        
        func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
            let cell = tableView.dequeueReusableCell(withIdentifier: String(describing: GeneralViewCell.self)) as! GeneralViewCell
            return cell
        }
}
