//
//  FIlterViewController.swift
//  Sand
//
//  Created by ANSAR DAULETBAYEV on 28.02.2023.
//

import UIKit

class FIlterViewController: UIViewController {

    @IBOutlet weak var tableView: UITableView!
    
    var sections = [
        Section(sectionTitle: "Сортировка по ...",
                    filters: ["Рэйтингу","По дате"],
                    expanded: false),
            Section(sectionTitle: "Жанры",
                    filters: ["Детектив","Драма", "Вестерн"],
                    expanded: false),
            Section(sectionTitle: "Страны",
                    filters: ["Казахстан","Франция","США"],
                    expanded: false)
        ]
    
    var selectIndexPath: IndexPath!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        selectIndexPath = IndexPath(row: -1, section: -1)
        
        let nib =  UINib(nibName: "ExpandableHeaderView", bundle: nil)
        tableView.register(nib, forHeaderFooterViewReuseIdentifier: "expandableHeaderView")
        
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
}

extension FIlterViewController: UITableViewDelegate, UITableViewDataSource, ExpandableHeaderViewDelegate {
    
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return sections.count
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return sections[section].filters.count
    }
    
    func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        return 58
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        if (sections[indexPath.section].expanded){
            return 44
        } else {
            return 0
        }
    }
    
    func tableView(_ tableView: UITableView, heightForFooterInSection section: Int) -> CGFloat {
        return 2
    }
    
    func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        let headerView = tableView.dequeueReusableHeaderFooterView(withIdentifier: "expandableHeaderView") as! ExpandableHeaderView
        headerView.customInit(title: sections[section].sectionTitle, section: section, delegate: self)
        return headerView
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "labelCell")
        cell?.textLabel?.text = sections[indexPath.section].filters[indexPath.row]
        cell?.accessoryType = (indexPath == selectIndexPath) ? .checkmark:.none
        return cell!
    }
    
    func toggleSection(header: ExpandableHeaderView, section: Int) {
        sections[section].expanded = !sections[section].expanded
        tableView.beginUpdates()
        tableView.reloadSections([section], with: .automatic)
        tableView.endUpdates()
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        self.selectIndexPath = indexPath
        sections[indexPath.section].expanded = !sections[indexPath.section].expanded
        tableView.beginUpdates()
        tableView.reloadSections([indexPath.section], with: .automatic)
        tableView.endUpdates()
    }
}
