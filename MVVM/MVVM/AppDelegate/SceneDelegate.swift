//
//  SceneDelegate.swift
//  MVVM
//
//  Created by Apple on 01/08/2021.
//

import UIKit

class SceneDelegate: UIResponder, UIWindowSceneDelegate, UITabBarControllerDelegate {

    var window: UIWindow?


    func scene(_ scene: UIScene, willConnectTo session: UISceneSession, options connectionOptions: UIScene.ConnectionOptions) {
        guard let windowScene = (scene as? UIWindowScene) else { return }
        let window = UIWindow(windowScene: windowScene)
        self.window = window
        window.makeKeyAndVisible()
                
        //changeScreen(type: .login)
        changeScreen(type: .tabbar)

    }
    
    enum TypeScreen {
            case login
            case tabbar
    }
    
    func tabBarController(_ tabBarController: UITabBarController, didSelect viewController: UIViewController) {
        print("Selected Tab : \(tabBarController.selectedIndex)")
    }
    
    private func createTabbar() {
            //Home
            let homeVC = HomeViewController()
            let homeNavi = UINavigationController(rootViewController: homeVC)
            homeNavi.tabBarItem = UITabBarItem(tabBarSystemItem: .featured, tag: 0)
            
            //Messages
            let messagesVC = MessagesViewController()
            let messagesNavi = UINavigationController(rootViewController: messagesVC)
            messagesNavi.tabBarItem = UITabBarItem(title: "Messages", image: UIImage(named: " "), selectedImage: UIImage(named: " "))
            messagesNavi.tabBarItem.badgeValue = "99"
            messagesNavi.tabBarItem.badgeColor = .blue
            
            //Friends
            let friendsVC = FriendsViewController()
            let friendsNavi = UINavigationController(rootViewController: friendsVC)
            friendsNavi.tabBarItem = UITabBarItem(title: "Friend", image: UIImage(named: " "), tag: 2)
            
            
            //Profile
            let profileVC = ProfileViewController()
            let profileNavi = UINavigationController(rootViewController: profileVC)
            profileNavi.tabBarItem = UITabBarItem(title: "Profile", image: UIImage(named: " "), tag: 3)
            
            
            //tabbar controller
            let tabbarController = UITabBarController()
            tabbarController.delegate = self
            tabbarController.viewControllers = [homeNavi, messagesNavi, friendsNavi, profileNavi]
            tabbarController.tabBar.tintColor = .red
            
            window?.rootViewController = tabbarController
        }
    
    private func createLogin() {
            let loginVC = LoginViewController()
            let loginNavi = BaseNavigationController(rootViewController: loginVC)
            
            window?.rootViewController = loginNavi
        }
    func changeScreen(type: TypeScreen) {
            switch type {
            case .login:
                createLogin()
            case .tabbar:
                createTabbar()
            }
        }

    func sceneDidDisconnect(_ scene: UIScene) {
        // Called as the scene is being released by the system.
        // This occurs shortly after the scene enters the background, or when its session is discarded.
        // Release any resources associated with this scene that can be re-created the next time the scene connects.
        // The scene may re-connect later, as its session was not necessarily discarded (see `application:didDiscardSceneSessions` instead).
    }

    func sceneDidBecomeActive(_ scene: UIScene) {
        // Called when the scene has moved from an inactive state to an active state.
        // Use this method to restart any tasks that were paused (or not yet started) when the scene was inactive.
    }

    func sceneWillResignActive(_ scene: UIScene) {
        // Called when the scene will move from an active state to an inactive state.
        // This may occur due to temporary interruptions (ex. an incoming phone call).
    }

    func sceneWillEnterForeground(_ scene: UIScene) {
        // Called as the scene transitions from the background to the foreground.
        // Use this method to undo the changes made on entering the background.
    }

    func sceneDidEnterBackground(_ scene: UIScene) {
        // Called as the scene transitions from the foreground to the background.
        // Use this method to save data, release shared resources, and store enough scene-specific state information
        // to restore the scene back to its current state.
    }


}

