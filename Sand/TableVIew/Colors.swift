//
//  Colors.swift
//  Sand
//
//  Created by ANSAR DAULETBAYEV on 02.03.2023.
//

import UIKit



extension UIColor {
    class func backgroundColor() -> UIColor {
        return UIColor.white
    }
    
    // Основной цвет лоя акцентов(управление визуальным вниманием пользователя используется для создания контраста м/у элементами интерфейса) и кнопок
    class func primaryColor() -> UIColor {
        return UIColor(red: 172/255, green: 129/255, blue: 86/255, alpha: 1)
    }
    // второстепенный сцет для акцентов
    class func secondaryColor() -> UIColor {
        return UIColor(red: 172/255, green: 129/255, blue: 86/255, alpha: 1)
    }
    
    
    //MARK: - BACKGROUND COLOR
    
    //MARK: - Preview Page
    
//    class func previewTitleFontDescription() -> UIColor {
//        return UIColor(red: 253/255, green: 232/255, blue: 208/255, alpha: 1)
//    }
    
    class func changeActivButtonBackgroundColor() -> UIColor {
        return UIColor(red: 172/255, green: 129/255, blue: 86/255, alpha: 1)
    }
    
    class func nextButtonBackgroundColor() -> UIColor {
        return UIColor(red: 172/255, green: 129/255, blue: 86/255, alpha: 1)
    }
    
    //MARK: Generals
    class func changeNotActivButtonBackgroundColor() -> UIColor {
        return UIColor(red: 255/255, green: 255/255, blue: 255/255, alpha: 1)
    }
    
    //MARK: Main Page
    class func playButtonBackgroundColor() -> UIColor {
        return UIColor(red: 0, green: 0, blue: 0, alpha: 1)
    }
    
    class func watchButtonTextColor() -> UIColor {
        .white
    }
    
    class func watchButtonBackgroundColor() -> UIColor {
        .black
    }

    //MARK: - Films and Serials Page
    class func changeActiveButtonBackgroundColor() -> UIColor {
        return UIColor(red: 174/255, green: 131/255, blue: 87/255, alpha: 1)
    }
    
    class func changeNotActiveButtonBackgroundColor() -> UIColor {
        return UIColor(red: 0, green: 0, blue: 0, alpha: 1)
    }
    
    class func backToFilmsOrSerialsPageButtonBackgroundColor() -> UIColor {
        return UIColor(red: 0, green: 0, blue: 0, alpha: 1)
    }
    
    class func starsButtonBackgroundColor() -> UIColor {
        return UIColor(red: 242/255, green: 163/255, blue: 58/255, alpha: 1)
    }
  
    class func searchBarBackgroundColor() -> UIColor {
        return UIColor(red: 255/255, green: 255/255, blue: 255/255, alpha: 1)
    }
    
    //MARK: - Categories Page
    class func notActiveButtonBackgroundColor() -> UIColor {
        return UIColor(red: 50/255, green: 50/255, blue: 50/255, alpha: 1)
    }
    
    class func activeButtonBackgroundColor() -> UIColor {
        return UIColor(red: 174/255, green: 131/255, blue: 87/255, alpha: 1)
    }
    
    
    //MARK: - FONTS COLOR
    
    //MARK: - Title Fonts
    class func titleNameFontColor() -> UIColor {
        return UIColor(red: 0, green: 0, blue: 0, alpha: 1)
    }
    
    class func mediaTitleNameFontColor() -> UIColor {
        return UIColor(red: 255/255, green: 255/255, blue: 255/255, alpha: 1)
    }
    
    //MARK: - Preview Page
    class func buttonTitleFontColor() -> UIColor {
        return UIColor(red: 255/255, green: 255/255, blue: 255/255, alpha: 1)
    }
    class func searchBarFontColor() -> UIColor {
        return UIColor(red: 0, green: 0, blue: 0, alpha: 1)
    }
    class func textLabelFontColor() -> UIColor {
        return UIColor(red: 253/255, green: 232/255, blue: 208/255, alpha: 1)
    }
    
    //MARK: Main Page
    class func descriptionLabelFontColor() -> UIColor {
        return UIColor(red: 193/255, green: 184/255, blue: 174/255, alpha: 1)
    }
    
    class func buttonWatchTextLabelFontColor() -> UIColor {
        return UIColor(red: 255/255, green: 255/255, blue: 255/255, alpha: 1)
    }
    
    
    // MARK: - Films Page
    class func backButtonTitleFontColor() -> UIColor {
        return UIColor(red: 255/255, green: 255/255, blue: 255/255, alpha: 1)
    }
    
    class func changeButtonTitleFontColor() -> UIColor {
        return UIColor(red: 2/255, green: 2/255, blue: 2/255, alpha: 1)
    }
    
    class func genreTitleFontColor() -> UIColor {
        return UIColor(red: 0, green: 0, blue: 0, alpha: 1)
    }
    
    class func originalTitleFontColor() -> UIColor {
        return UIColor(red: 255/255, green: 255/255, blue: 255/255, alpha: 1)
    }
    
    class func releaseDateTitleFontColor() -> UIColor {
        return UIColor(red: 255/255, green: 255/255, blue: 255/255, alpha: 1)
    }
    
    class func genreFilmPageTitleFontColor() -> UIColor {
        return UIColor(red: 255/255, green: 255/255, blue: 255/255, alpha: 1)
    }
    
    //MARK: - Filter Page
    class func filterHeaderTitleFontColor() -> UIColor {
        return UIColor(red: 0, green: 0, blue: 0, alpha: 1)
    }
    
    //MARK: - Media(child) pages
    
    class func mediaDescriptionTitleFontColor() -> UIColor {
        return UIColor(red: 255/255, green: 255/255, blue: 255/255, alpha: 1)
    }
    
    
    //MARK: - Underline
    
    class func underlineColor() -> UIColor {
        return UIColor(red: 174/255, green: 131/255, blue: 87/255, alpha: 1)
    }
    
    
    //MARK: - Text Color
    class func generalTextColor() -> UIColor {
        return UIColor.black
    }
    
    
    //MARK: - Border Color
    
    class func searchBarBorderColor() -> UIColor {
        return UIColor(red: 0, green: 0, blue: 0, alpha: 1)
    }

    
    
//    // MARK: - Generals fonts
//    class func pageTitleFont() -> UIColor {
//        return UIColor(red: 0, green: 0, blue: 0, alpha: 1)
//    }
//
//    class func ButtonFontPressed() -> UIColor {
//        return UIColor(red: 255/255, green: 255/255, blue: 255/255, alpha: 1)
//    }
//
//
//    //MARK: - Page of Categories
//    class func ButtonFontPressedOfCategories() -> UIColor {
//        return UIColor(red: 2/255, green: 2/255, blue: 2/255, alpha: 1)
//    }
//
//    //MARK: - Page of Films
//    class func filmNameFontDescription() -> UIColor {
//        return UIColor(red: 253/255, green: 232/255, blue: 208/255, alpha: 1)
//    }
//
//    class func filmsPageTitleFont() -> UIColor {
//        return UIColor(red: 255/255, green: 255/255, blue: 255/255, alpha: 1)
//    }
    
}

