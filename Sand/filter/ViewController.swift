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
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let nib = UINib(nibName: "DemoTableViewCell", bundle: nil)
        tableView.register(nib, forCellReuseIdentifier: "DemoTableViewCell")
        tableView.dataSource = self
        tableView.delegate = self
    }
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
        return cell
    }
    
    //button appearance
    func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        return 50
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
    
    //change marker of section
    @objc func sectionMarkerToggle(sender: UIButton) {
        let sectionIndex = sender.tag
        seasons[sectionIndex].expanded.toggle()
        tableView.reloadData()
    }
    

    
    func tableView(_ tableView: UITableView, heightForFooterInSection section: Int) -> CGFloat {
        return 50
    }
}
