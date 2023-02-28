//
//  Section.swift
//  Sand
//
//  Created by ANSAR DAULETBAYEV on 28.02.2023.
//

import Foundation
//DemoTableViewCell

struct Section {
    var sectionTitle: String
    var filters: [String]
    var expanded: Bool
    
    init(sectionTitle: String, filters: [String], expanded: Bool) {
        self.sectionTitle = sectionTitle
        self.filters = filters
        self.expanded = expanded
    }
}
