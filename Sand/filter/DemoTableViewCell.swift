//
//  DemoTableViewCell.swift
//  Sand
//
//  Created by ANSAR DAULETBAYEV on 28.02.2023.
//

import UIKit

class DemoTableViewCell: UITableViewCell {

//    @IBOutlet var firstImageView: UIImageView!
    @IBOutlet var myLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
