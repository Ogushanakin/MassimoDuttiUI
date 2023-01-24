//
//  ProfileHeader.swift
//  MassimoDutti
//
//  Created by AKIN on 23.01.2023.
//

import UIKit

final class ProfileHeader: UIView {
    
    // MARK: - Properties
    
    private let hesabımTitle: UILabel = {
        let label = UILabel()
        label.text = "Hesabım"
        label.textColor = .black
        label.font = UIFont.systemFont(ofSize: 16, weight: .medium)
        return label
    }()
    
    private let emailTitle: UILabel = {
        let label = UILabel()
        label.text = "ogzhnakn96@gmail.com"
        label.textColor = .black
        label.font = UIFont.systemFont(ofSize: 12, weight: .regular)
        return label
    }()
    
    private let seperatorView: UIView = {
        let view = UIView()
        view.backgroundColor = .black
        return view
    }()

    private lazy var signOutButton: UIImageView = {
        let image = UIImageView()
        image.image = UIImage(named: "sign-out")
        image.tintColor = .black
        image.addGestureRecognizer(UIGestureRecognizer(target: self, action: #selector(signOut)))
        return image
    }()
    
    // MARK: - Lifecycle
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        addSubview(hesabımTitle)
        hesabımTitle.anchor(top: self.bottomAnchor, left: self.leftAnchor,
                            paddingTop: 12, paddingLeft: 164)
        
        addSubview(emailTitle)
        emailTitle.centerX(inView: hesabımTitle)
        emailTitle.anchor(top: hesabımTitle.bottomAnchor, paddingTop: 2)
        
        addSubview(seperatorView)
        seperatorView.anchor(top: emailTitle.bottomAnchor, left: self.leftAnchor, right: self.rightAnchor,
                             paddingTop: 6, height: 0.3)
        
        addSubview(signOutButton)
        signOutButton.setDimensions(height: 20, width: 20)
        signOutButton.anchor(top: self.bottomAnchor, right: self.rightAnchor,
                             paddingTop: 16, paddingRight: 16)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    @objc func signOut() {
        print("DEBUG: Sign out...")
    }
}
