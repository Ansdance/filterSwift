//
//  SerialOverviewViewController.swift
//  Sand
//
//  Created by ANSAR DAULETBAYEV on 27.02.2023.
//
//
//  SerialsViewController.swift
//  Shanyraq
//
//  Created by ANSAR DAULETBAYEV on 08.02.2023.
//

import UIKit

class SerialOverviewViewController: UIViewController {
    
    var seasons = ["1","2","3","4","5"]    
    @IBOutlet weak var uitableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        uitableView.delegate = self
        uitableView.dataSource = self
        navigationController?.navigationBar.isHidden = true
    }
}

extension SerialOverviewViewController: UITableViewDelegate, UITableViewDataSource {
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return seasons.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        
        cell.textLabel?.text = seasons[indexPath.row]
        
        return cell
    }
}
