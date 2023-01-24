//
//  ProfileFooter.swift
//  MassimoDutti
//
//  Created by AKIN on 24.01.2023.
//

import UIKit

final class ProfileFooter: UIView {
    
    // MARK: - Properties
    
    private lazy var firstButton: UIButton = {
        let button = UIButton(type: .system)
        let attributedTitle = NSMutableAttributedString(
            string: "Uygulamanın özellikleri şart ve koşulları",
            attributes: [.font: UIFont.systemFont(ofSize: 13),
                         .foregroundColor: UIColor.black,
                         .underlineStyle: NSUnderlineStyle.single.rawValue])
        button.setAttributedTitle(attributedTitle, for: .normal)
        return button
    }()
    
    private lazy var secondButton: UIButton = {
        let button = UIButton(type: .system)
        let attributedTitle = NSMutableAttributedString(
            string: "Çerez ayarları",
            attributes: [.font: UIFont.systemFont(ofSize: 13),
                         .foregroundColor: UIColor.black,
                         .underlineStyle: NSUnderlineStyle.single.rawValue])
        button.setAttributedTitle(attributedTitle, for: .normal)
        return button
    }()

    // MARK: - Lifecycle
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        addSubview(firstButton)
        firstButton.anchor(top: self.topAnchor, left: self.leftAnchor,
                                     paddingTop: 40, paddingLeft: 74)
        
        addSubview(secondButton)
        secondButton.centerX(inView: firstButton)
        secondButton.anchor(top: firstButton.bottomAnchor, paddingTop: 16)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}

