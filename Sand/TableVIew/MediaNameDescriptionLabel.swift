//
//  MediaNameDescriptionLabel.swift
//  Sand
//
//  Created by ANSAR DAULETBAYEV on 02.03.2023.
//

class MediaNameDescriptionLabel: BaseTextLabel {
    override func setupStyle() {
        super.setupStyle()
        text = "2003  Матрица Революция-Боевик  2ч40m"
        textColor = .mediaDescriptionTitleFontColor()
        textAlignment = .left
        font = .mediaNameTextTitleFont()
        numberOfLines = 0
        lineBreakMode = .byWordWrapping
        sizeToFit()
    }
}
