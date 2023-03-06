//
//  MediaDescriptionLabel.swift
//  Sand
//
//  Created by ANSAR DAULETBAYEV on 02.03.2023.
//

import UIKit

class MediaDescriptionLabel: BaseTextLabel {
    override func setupStyle() {
        super.setupStyle()
        text = "Ddddd ddddddddd ddddd dddddddddddddddd ddddd dddddddddddddddd ddddd dddddddddddddddd ddddd ddddddd"
        textColor = .mediaDescriptionTitleFontColor()
        textAlignment = .left
        font = .mediaDescriptionTextTitleFont()
        numberOfLines = 0
        lineBreakMode = .byWordWrapping
        sizeToFit()
    }
}
