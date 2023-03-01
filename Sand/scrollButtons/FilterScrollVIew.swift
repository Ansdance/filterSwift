//
//  FilterScrollVIew.swift
//  Sand
//
//  Created by ANSAR DAULETBAYEV on 01.03.2023.
//

import UIKit

class FilterScrollVIew: UIView {
    
    var dataSource: [String] = [] {
        didSet {
            renderUI()
        }
    }
    
    lazy var scrollView: UIScrollView = {
        let scrollView = UIScrollView()
        scrollView.showsVerticalScrollIndicator = false
        return scrollView
    }()
    
    lazy var stackView: UIStackView = {
        let stackView = UIStackView()
        stackView.axis = .horizontal
        stackView.spacing = 8
        return stackView
    }()
    
    required override init(frame: CGRect) {
        super.init(frame: frame)
        commonInit()
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
        commonInit()
    }
    
    private func commonInit() {
        scrollView.translatesAutoresizingMaskIntoConstraints = false
        stackView.translatesAutoresizingMaskIntoConstraints = false
        scrollView.addSubview(stackView)
        self.addSubview(scrollView)

        NSLayoutConstraint.activate([
            scrollView.topAnchor.constraint(equalTo: self.topAnchor),
            scrollView.bottomAnchor.constraint(equalTo: self.bottomAnchor),
            scrollView.leadingAnchor.constraint(equalTo: self.leadingAnchor),
            scrollView.trailingAnchor.constraint(equalTo: self.trailingAnchor),

            stackView.topAnchor.constraint(equalTo: scrollView.topAnchor),
            stackView.bottomAnchor.constraint(equalTo: scrollView.bottomAnchor),
            stackView.leadingAnchor.constraint(equalTo: scrollView.leadingAnchor),
            stackView.trailingAnchor.constraint(equalTo: scrollView.trailingAnchor),
            stackView.widthAnchor.constraint(equalTo: scrollView.widthAnchor)
        ])
    }
    
    private func renderUI() {
        for (index, item) in dataSource.enumerated() {
            stackView.addArrangedSubview(createTokenView(index: index, item: item))
        }
    }
    
    private func createTokenView(index: Int, item: String) -> UIView {
        let view = UIView()
        view.backgroundColor = .black
        view.layer.cornerRadius = 4
        view.clipsToBounds = true
        
        let textLabel = UILabel()
        textLabel.text = item
        textLabel.textColor = .white
        textLabel.font = UIFont.systemFont(ofSize: 14)
        textLabel.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(textLabel)
        
        let removeButton = UIButton(type: .custom)
        removeButton.tag = index
        removeButton.setImage(UIImage(named: "FliterClose"), for: .normal)
        removeButton.addTarget(self, action: #selector(removeButtonAction), for: .touchUpInside)
        removeButton.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(removeButton)
        
        var viewAnchors = [NSLayoutConstraint]()
        viewAnchors.append(textLabel.topAnchor.constraint(equalTo: view.topAnchor, constant: 0))
        viewAnchors.append(textLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 0))
        viewAnchors.append(textLabel.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: 0))
        NSLayoutConstraint.activate(viewAnchors)
        
        var removeButtonAnchors = [NSLayoutConstraint]()
        removeButtonAnchors.append(removeButton.leadingAnchor.constraint(equalTo: textLabel.trailingAnchor, constant: 0))
        removeButtonAnchors.append(removeButton.trailingAnchor.constraint(equalTo: textLabel.trailingAnchor, constant: 0))
        removeButtonAnchors.append(removeButton.heightAnchor.constraint(equalTo: textLabel.heightAnchor))
        removeButtonAnchors.append(removeButton.widthAnchor.constraint(equalTo: textLabel.heightAnchor))
        removeButtonAnchors.append(removeButton.centerYAnchor.constraint(equalTo: textLabel.centerYAnchor, constant: 0))
        NSLayoutConstraint.activate(removeButtonAnchors)
        
        return view
    }
    
    @objc func removeButtonAction(sender: UIButton) {
        
    }
}
