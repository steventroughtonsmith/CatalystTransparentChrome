//
//  SceneDelegate.swift
//  TransparentChrome
//
//  Created by Steven Troughton-Smith on 28/08/2021.
//

import UIKit
import SwiftUI

class SceneDelegate: UIResponder, UIWindowSceneDelegate {
	
	var window: UIWindow?
	
	
	func scene(_ scene: UIScene, willConnectTo session: UISceneSession, options connectionOptions: UIScene.ConnectionOptions) {

		if let windowScene = scene as? UIWindowScene {
			let window = UIWindow(windowScene: windowScene)
			
			windowScene.titlebar?.titleVisibility = .hidden
			
			let backgroundVC = BlurredBackgroundRootViewController()
			
			let contentView = ContentView()
			let contentVC = UIHostingController(rootView: contentView)
			
			backgroundVC.addChild(contentVC)
			contentVC.view.autoresizingMask = [.flexibleWidth, .flexibleHeight]
			contentVC.view.frame = backgroundVC.view.bounds
			contentVC.view.backgroundColor = .clear
			
			backgroundVC.view.addSubview(contentVC.view)
			
			window.rootViewController = backgroundVC
			self.window = window
			window.makeKeyAndVisible()
		}
	}
}

