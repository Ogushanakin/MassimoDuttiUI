//
//  ProfileCell.swift
//  MassimoDutti
//
//  Created by AKIN on 23.01.2023.
//

import UIKit

final class ProfileCell: UITableViewCell {
    
    // MARK: - Properties
    
    var viewModel: ProfileViewModel? {
        didSet { configure() }
    }
    
    private lazy var iconView: UIView = {
        let view = UIView()
        
        view.addSubview(iconImage)
        iconImage.centerX(inView: view)
        iconImage.centerY(inView: view)
        
        view.backgroundColor = #colorLiteral(red: 0.9960784314, green: 0.9960784314, blue: 0.9960784314, alpha: 1)
        view.setDimensions(height: 40, width: 40)
        view.layer.cornerRadius = 40 / 2
        return view
    }()
    
    private let iconImage: UIImageView = {
        let iv = UIImageView()
        iv.contentMode = .scaleAspectFill
        iv.clipsToBounds = true
        iv.setDimensions(height: 22, width: 22)
        iv.tintColor = .black
        return iv
    }()
    
    private let titleLabel: UILabel = {
        let label = UILabel()
        label.font = UIFont.systemFont(ofSize: 16, weight: .medium)
        return label
    }()
    
    private let arrowImage: UIImageView = {
        let iv = UIImageView()
        iv.image = UIImage(named: "right")
        iv.contentMode = .scaleAspectFill
        iv.clipsToBounds = true
        iv.setDimensions(height: 18, width: 22)
        iv.tintColor = .black
        return iv
    }()
    
    private let seperatorView: UIView = {
        let view = UIView()
        view.backgroundColor = .black
        return view
    }()
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        
        let stack = UIStackView(arrangedSubviews: [iconView, titleLabel])
        stack.spacing = 14
        stack.axis = .horizontal
        
        addSubview(stack)
        stack.centerY(inView: self, leftAnchor: leftAnchor, paddingLeft: 12)
        
        addSubview(arrowImage)
        arrowImage.centerY(inView: stack)
        arrowImage.anchor(right: self.rightAnchor, paddingRight: 16)
        
        addSubview(seperatorView)
        seperatorView.anchor(left: self.leftAnchor, bottom: self.bottomAnchor, right: self.rightAnchor,
                             height: 0.3)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func configure() {
        guard let viewModel = viewModel else { return }
        
        iconImage.image = UIImage(named: viewModel.iconImageName)
        titleLabel.text = viewModel.description
    }
}

