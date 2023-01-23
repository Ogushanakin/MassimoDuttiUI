//
//  MainTabBarController.swift
//  MassimoDutti
//
//  Created by AKIN on 22.01.2023.
//

import UIKit

class MainTabBarController: UITabBarController {
   
   private var shouldShowOnboarding = false
   
   // MARK: - Lifecycle
   
   override func viewDidLoad() {
       super.viewDidLoad()
       
       view.backgroundColor = .systemBackground
       configureViewControllers()
       configureNavigationBarButtons()
       checkIfUserIsLoggedIn()
   }
   
   // MARK: - API
    
   func logout() {
   }
   
   func checkIfUserIsLoggedIn() {
   }
   
   fileprivate func presentLoginController() {
       
   }
   
   fileprivate func presentOnboardingController() {
       
   }
  
   // MARK: - Helpers
   
   private func configureViewControllers() {
       
       let products = templateNavigationController(unselectedImage: UIImage(named: "home")!,
                                                   selectedImage: UIImage(named: "homefill")!,
                                                   title: "", navigationItemTitle: "Anasayfa",
                                                   rootViewController: ViewController())
       
       let search = templateNavigationController(unselectedImage: UIImage(named: "search")!,
                                                 selectedImage: UIImage(named: "searchfill")!,
                                                 title: "", navigationItemTitle: "Search",
                                                 rootViewController: ViewController())
       
       let profile = templateNavigationController(unselectedImage: UIImage(named: "user")!,
                                                  selectedImage: UIImage(named: "userfill")!,
                                                  title: "", navigationItemTitle: "Hesabım",
                                                  rootViewController: ProfileController())
       
       let cart = templateNavigationController(unselectedImage: UIImage(named: "shopping-bag")!,
                                                  selectedImage: UIImage(named: "shopping-bagfill")!,
                                                  title: "", navigationItemTitle: "Hesabım",
                                                  rootViewController: ViewController())
       
       viewControllers = [products, search, profile, cart]
   }
   
    func templateNavigationController(unselectedImage: UIImage, selectedImage: UIImage, title: String, navigationItemTitle: String, rootViewController: UIViewController) -> UINavigationController {
       let nav = UINavigationController(rootViewController: rootViewController)
       nav.tabBarItem.image = unselectedImage
       nav.tabBarItem.selectedImage = selectedImage
       nav.tabBarItem.title = title
       tabBar.tintColor = .black
       return nav
   }
   
   private func configureNavigationBarButtons() {
       navigationItem.rightBarButtonItem = UIBarButtonItem(image: UIImage(named: "sign-out"), style: .plain, target: self, action: #selector(showSideMenu))
       navigationItem.rightBarButtonItem?.tintColor = .black
       navigationItem.leftBarButtonItem = UIBarButtonItem(image: UIImage(named: "cart"), style: .plain, target: self, action: #selector(handleShowCart))
       navigationItem.leftBarButtonItem?.tintColor = .black
   }
   
   // MARK: - Selectors
   
   @objc func handleShowCart() {
       
   }
   
   @objc func showSideMenu() {
       
   }
   
}
