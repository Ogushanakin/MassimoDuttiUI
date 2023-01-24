//
//  MainTabBarController.swift
//  MassimoDutti
//
//  Created by AKIN on 22.01.2023.
//

import UIKit

class MainTabBarController: UITabBarController {
   
   
   // MARK: - Lifecycle
   
   override func viewDidLoad() {
       super.viewDidLoad()
       
       configureViewControllers()
   }
  
   // MARK: - Helpers
   
   private func configureViewControllers() {
       
       let products = templateNavigationController(unselectedImage: UIImage(named: "home")!,
                                                   selectedImage: UIImage(named: "homefill")!,
                                                   title: "",
                                                   rootViewController: ViewController())
       
       let search = templateNavigationController(unselectedImage: UIImage(named: "search")!,
                                                 selectedImage: UIImage(named: "searchfill")!,
                                                 title: "",
                                                 rootViewController: ViewController())
       
       let profile = templateNavigationController(unselectedImage: UIImage(named: "user")!,
                                                  selectedImage: UIImage(named: "userfill")!,
                                                  title: "",
                                                  rootViewController: ProfileController())
       
       let cart = templateNavigationController(unselectedImage: UIImage(named: "shopping-bag")!,
                                               selectedImage: UIImage(named: "shopping-bagfill")!,
                                               title: "",
                                               rootViewController: ViewController())
       
       viewControllers = [products, search, profile, cart]
   }
   
    func templateNavigationController(unselectedImage: UIImage, selectedImage: UIImage, title: String, rootViewController: UIViewController) -> UINavigationController {
       let nav = UINavigationController(rootViewController: rootViewController)
       nav.tabBarItem.image = unselectedImage
       nav.tabBarItem.selectedImage = selectedImage
       tabBar.tintColor = .black
       return nav
   }
   
   // MARK: - Selectors
   
   @objc func handleShowCart() {
       
   }
   
   @objc func showSideMenu() {
       
   }
   
}
