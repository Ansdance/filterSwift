//
//  TokenScrollView.swift
//  Sand
//
//  Created by ANSAR DAULETBAYEV on 01.03.2023.
//

import UIKit

class ScrollSeasonView: UIScrollView {
    var tokens: [String] = [] {
        didSet {
            renderTokens()
        }
    }

    private let stackView = UIStackView()

    override init(frame: CGRect) {
        super.init(frame: frame)
        setupScrollView()
    }

    required init?(coder: NSCoder) {
        super.init(coder: coder)
        setupScrollView()
    }

    private func setupScrollView() {
        showsVerticalScrollIndicator = false
        showsHorizontalScrollIndicator = true
        addSubview(stackView)
        stackView.axis = .horizontal
        stackView.spacing = 8
        stackView.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            stackView.topAnchor.constraint(equalTo: topAnchor),
            stackView.bottomAnchor.constraint(equalTo: bottomAnchor),
            stackView.leadingAnchor.constraint(equalTo: leadingAnchor),
            stackView.trailingAnchor.constraint(equalTo: trailingAnchor),
            stackView.heightAnchor.constraint(equalTo: heightAnchor)
        ])
    }

    private func renderTokens() {
        stackView.arrangedSubviews.forEach { $0.removeFromSuperview() }

        for token in tokens {
            let tokenButton = UIButton(type: .system)
            tokenButton.setTitle(token, for: .normal)
            tokenButton.setTitleColor(.white, for: .normal)
            tokenButton.backgroundColor = .black
            tokenButton.layer.cornerRadius = 4
            tokenButton.clipsToBounds = true
            stackView.addArrangedSubview(tokenButton)
        }
    }
}
