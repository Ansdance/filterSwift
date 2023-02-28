//
//  ViewController.swift
//  Sand
//
//  Created by ANSAR DAULETBAYEV on 27.02.2023.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var tableView: UITableView!
    
    var seasons = [Season(sectionTitle: "Сортировка по ...", filters: ["Рэйтингу","По дате"], expanded: false),
                   Season(sectionTitle: "Жанры", filters: ["Детектив","Драма", "Вестерн"], expanded: false),
                   Season(sectionTitle: "Страны", filters: ["Казахстан","Франция","США "], expanded: false)
    ]
//    var seasons = [["Рэйтингу","По дате"], ["Детектив","Драма", "Вестерн"], ["Казахстан","Франция","США "]]
    
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
        if seasons[section].expanded == true {
            return seasons[section].filters.count
        } else {
            return 0
        }
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "DemoTableViewCell", for: indexPath) as! DemoTableViewCell

        cell.textLabel?.text = seasons[indexPath.section].filters[indexPath.row]
//        cell.button.setTitle(seasons[indexPath.section][indexPath.row], for: .normal)
//        cell.transform = CGAffineTransform(scaleX: -1, y: -1)
//        cell.button.transform = CGAffineTransform(scaleX: -1, y: -1)
        return cell
    }
    
    func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        
        let sectionHeaderButton = UIButton()
        sectionHeaderButton.backgroundColor = .orange
        sectionHeaderButton.titleLabel!.font = UIFont.systemFont(ofSize: 20)
        sectionHeaderButton.titleLabel!.textAlignment = .left
        sectionHeaderButton.tag = section
        
        sectionHeaderButton.addTarget(self, action: #selector(self.sectionMarkerToggle(sender:)), for: .touchUpInside)
        sectionHeaderButton.setTitle(seasons[section].sectionTitle, for: .normal)
        
        return sectionHeaderButton
    }
    
    @objc func sectionMarkerToggle(sender: UIButton) {
        let sectionIndex = sender.tag
        seasons[sectionIndex].expanded.toggle()
        tableView.reloadData()
    }
    
    func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        return 50
    }
    
    func tableView(_ tableView: UITableView, heightForFooterInSection section: Int) -> CGFloat {
        return 50
    }

//    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
////        return tableView.frame.width / CGFloat(seasons.count)
//        return 60
//    }
}
