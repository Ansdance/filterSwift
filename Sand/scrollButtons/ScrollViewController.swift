//
//  ScrollViewController.swift
//  Sand
//
//  Created by ANSAR DAULETBAYEV on 01.03.2023.
//

import UIKit

class ScrollViewController: UIViewController {
    
    
    @IBOutlet weak var scrollView: ScrollSeasonView!
    
    var serialScrollView:ScrollSeasonView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        serialScrollView = ScrollSeasonView(frame: CGRect.zero)
        scrollView.addSubview(serialScrollView)
        
        serialScrollView.tokens = ["Monday", "Tuesday", "Wednesday", "Thursday", "Friday", "Saturday", "Sunday"]
    }
    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        
        serialScrollView.frame = scrollView.bounds
    }
}
