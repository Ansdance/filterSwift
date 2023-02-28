//
//  ViewController.swift
//  Sand
//
//  Created by ANSAR DAULETBAYEV on 27.02.2023.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var tableView: UITableView!
    
    var seasons = [["Рэйтингу","По дате"], ["Детектив","Драма", "Вестерн"], ["Казахстан","Франция","США "]]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        let nib = UINib(nibName: "DemoTableViewCell", bundle: nil)
        tableView.register(nib, forCellReuseIdentifier: "DemoTableViewCell")
        tableView.dataSource = self
        tableView.delegate = self
        
//        tableView.transform = CGAffineTransform(rotationAngle: CGFloat.pi / 2)

//        tableView.showsVerticalScrollIndicator = false
//        tableView.frame = CGRect(x: 0, y: 0, width: view.frame.width, height: 100)
//        tableView.contentInset = UIEdgeInsets(top: UIScreen.main.bounds.height, left: 0, bottom: 0, right: 0)
        
    }
    
//    override func viewWillLayoutSubviews() {
//        super.viewWillLayoutSubviews()
//        tableView.frame = view.bounds
//    }
//

}

extension ViewController: UITableViewDelegate, UITableViewDataSource {
    func numberOfSections(in tableView: UITableView) -> Int {
        return seasons.count
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return seasons[section].count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "DemoTableViewCell", for: indexPath) as! DemoTableViewCell
//        cell.firstImageView.backgroundColor = .red
//        
        cell.textLabel?.text = seasons[indexPath.section][indexPath.row]
//        cell.button.setTitle(seasons[indexPath.section][indexPath.row], for: .normal)
//        cell.transform = CGAffineTransform(scaleX: -1, y: -1)
//        cell.button.transform = CGAffineTransform(scaleX: -1, y: -1)
        return cell
    }
    
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        if section == 0 {
            return "Сортировка по ..."
        } else if section == 1 {
            return "Жанры"
        } else if section == 2 {
            return "Страны"
        } else {
            return "Fall"
        }
    }
//    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
////        return tableView.frame.width / CGFloat(seasons.count)
//        return 60
//    }
}
