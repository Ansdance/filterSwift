//
//  TitleFont.swift
//  Sand
//
//  Created by ANSAR DAULETBAYEV on 02.03.2023.
//

import UIKit

public enum Fonts: String {
    case bold = "Roboto-Bold"
    case regular = "Poppins-Regular"
    case title = "Helvetica"
    case titleBold = "Helvetica-Bold"
}

extension UIFont {
    convenience public init(name: Fonts, size: CGFloat) {
        self.init(name: name.rawValue, size: size)!
    }
    
    //MARK: Buttons
    
    class func changeButtonTitleFont() -> UIFont {
        .init(name: .bold, size: 16)
    }
    
    class func watchButtonTitleFont() -> UIFont {
        .init(name: .title, size: 18)
    }
    
    //MARK: SearchBar
    
    class func searchBarTitleFont() -> UIFont {
        .init(name: .title, size: 14)
    }
    
    class func searchBarForSearchTitleFont() -> UIFont {
        .init(name: .titleBold, size: 12)
    }
    
    //MARK: Title
    class func originalTitleFont() -> UIFont {
        .init(name: .bold, size: 26)
    }
    
    class func releaseDateTitleFont() -> UIFont {
        .init(name: .title, size: 10)
    }
    
    class func descriptionTitleFont() -> UIFont {
        .init(name: .title, size: 18)
    }

    class func titleFont() -> UIFont {
        .init(name: .title, size: 23)
    }
        
    class func categoryTitleFont() -> UIFont {
        .init(name: .title, size: 30)
    }
    
    class func previewTitleFont() -> UIFont {
        .init(name: .title, size: 38)
    }
    
    class func previewBoldTitleFont() -> UIFont {
        .init(name: .titleBold, size: 38)
    }
    
    class func genreFilmsPageTitleFont() -> UIFont {
        .init(name: .title, size: 10)
    }
    
    class func buttonWatchTextTitleFont() -> UIFont {
        .init(name: .title, size: 18)
    }
    
    //MARK: - Media(child) page
    
    class func mediaDescriptionTextTitleFont() -> UIFont {
        .init(name: .regular, size: 12)
    }
    
    class func mediaNameTextTitleFont() -> UIFont {
        .init(name: .regular, size: 15)
    }
    
    //MARK: - Filter page
    
    class func filterHeaderTextTitleFont() -> UIFont {
        .init(name: .titleBold, size: 12)
    }
}
