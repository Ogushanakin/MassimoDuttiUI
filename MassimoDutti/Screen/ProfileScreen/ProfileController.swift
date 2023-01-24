//
//  ProfileController.swift
//  MassimoDutti
//
//  Created by AKIN on 22.01.2023.
//

import UIKit

private let reuseIdentifier = "ProfileCell"

final class ProfileController: UITableViewController {
    
    // MARK: - Properties
    
    
    // MARK: - Lifecycle
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configureUI()
    }
    
    
    // MARK: - Helpers
    
    func configureUI() {
        view.backgroundColor = #colorLiteral(red: 0.9960784314, green: 0.9960784314, blue: 0.9960784314, alpha: 1)
        self.navigationController?.isNavigationBarHidden = true
        self.navigationController?.navigationBar.barStyle = .black
        
        tableView.contentInsetAdjustmentBehavior = .never
        tableView.separatorStyle = .none
        tableView.register(ProfileCell.self, forCellReuseIdentifier: reuseIdentifier)
        tableView.rowHeight = 54
        
        tableView.tableHeaderView = ProfileHeader(frame: .init(x: 0, y: 0,
                                                               width: view.frame.width,
                                                               height: 44))
        tableView.tableFooterView = ProfileFooter(frame: .init(x: 0, y: 0,
                                                               width: view.frame.width,
                                                               height: 200))
    }

}

// MARK: - UITableViewDataSource

extension ProfileController {
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return ProfileViewModel.allCases.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: reuseIdentifier, for: indexPath) as! ProfileCell
        
        let viewModel = ProfileViewModel(rawValue: indexPath.row)
        cell.viewModel = viewModel
        cell.selectionStyle = .none
        
        return cell
    }
}

// MARK: - UITableViewDelegate

extension ProfileController {
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        guard let viewModel = ProfileViewModel(rawValue: indexPath.row) else { return }
        
        switch viewModel {
        case .shoppingbag:
            print("DEBUG: Show cart page...")
        case .profile:
            print("DEBUG: Show profile page...")
        case .notifications:
            print("DEBUG: Show bildirimler...")
        case .iade:
            print("DEBUG: Show iadeler...")
        case .settings:
            print("DEBUG: Show settings page...")
        case .information:
            print("DEBUG: Show information page...")
        }
    }
    
    override func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        return UIView()
    }
}


