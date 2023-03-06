//
//  SViewController.swift
//  Sand
//
//  Created by ANSAR DAULETBAYEV on 03.03.2023.
//

import UIKit

class SViewController: UIViewController {

    @IBOutlet weak var table: UITableView!
    
    struct Sun{
        let imageName:String
    }
    let data: [Sun] = [
    Sun(imageName: "matrix")]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        table.dataSource = self
    }
    


}
extension SViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return data.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let sun = data[indexPath.row]
        let cell = tableView.dequeueReusableCell(withIdentifier: "UITableViewCell", for: indexPath) as! UITableViewCell
        cell.imageView?.image = UIImage(named: sun.imageName)
        return cell
    }
    
    
}
