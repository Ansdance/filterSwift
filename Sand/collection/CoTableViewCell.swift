//
//  CoTableViewCell.swift
//  Sand
//
//  Created by ANSAR DAULETBAYEV on 03.03.2023.
//

import UIKit

class CoTableViewCell: UITableViewCell {

    @IBOutlet weak var popularImageCell: UIImageView!
    @IBOutlet weak var popularLabelCell: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
       
    }

    func setDataPop(film: String) {
        popularLabelCell.text = film
        popularImageCell.image = UIImage(named: "matrix")
        popularImageCell.layer.cornerRadius = 55
    }

}
