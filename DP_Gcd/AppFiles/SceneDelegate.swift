//
//  SceneDelegate.swift
//  DP_Gcd
//
//  Created by Niunin on 20.12.2021.
//

import UIKit

class SceneDelegate: UIResponder, UIWindowSceneDelegate {

    var window: UIWindow?

    func scene(_ scene: UIScene, willConnectTo session: UISceneSession, options connectionOptions: UIScene.ConnectionOptions) {
        // ViewController
        let showGlassVC = ShowGlassRouter.build()
        let showGlassNC = UINavigationController(rootViewController: showGlassVC)
        showGlassNC.navigationBar.topItem?.title = "GCD Image Picker"
        showGlassNC.navigationBar.prefersLargeTitles = true
        showGlassNC.navigationBar.isHidden = true
        
        // Window
        guard let windowScene = (scene as? UIWindowScene) else {
            return
        }
        window = UIWindow(frame: windowScene.coordinateSpace.bounds)
        window?.windowScene = windowScene
        window?.rootViewController = showGlassNC
        window?.makeKeyAndVisible()
    }

}
