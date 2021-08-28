//
//  BlurredBackgroundRootViewController.swift
//  TransparentChrome
//
//  Created by Steven Troughton-Smith on 28/08/2021.
//

import UIKit

class BlurredBackgroundRootViewController: UIViewController {
	private let _backgroundSplitViewController = UISplitViewController(style: .doubleColumn)

	init() {
		super.init(nibName: nil, bundle: nil)
		
		overrideUserInterfaceStyle = .dark
		
		_backgroundSplitViewController.primaryBackgroundStyle = .sidebar
		
		let a = UIViewController()
		let b = UIViewController()

		_backgroundSplitViewController.viewControllers = [a, b]
		a.navigationController?.isNavigationBarHidden = true
		a.view.isHidden = true
		
		b.navigationController?.isNavigationBarHidden = true
		b.view.isHidden = true
		
		_backgroundSplitViewController.preferredPrimaryColumnWidthFraction = 0.5

		addChild(_backgroundSplitViewController)
				
		view.addSubview(_backgroundSplitViewController.view)
	}
	
	required init?(coder: NSCoder) {
		fatalError("init(coder:) has not been implemented")
	}
	
	override func viewDidLayoutSubviews() {
		_backgroundSplitViewController.minimumPrimaryColumnWidth = view.bounds.width
		_backgroundSplitViewController.maximumPrimaryColumnWidth = view.bounds.width
		
		_backgroundSplitViewController.view.frame = CGRect(x: 0, y: 0, width: view.bounds.width * 2, height: view.bounds.height)
	}
}
