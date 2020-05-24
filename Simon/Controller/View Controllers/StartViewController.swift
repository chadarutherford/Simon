//
//  StartViewController.swift
//  Simon
//
//  Created by Chad Rutherford on 5/24/20.
//  Copyright © 2020 Chad Rutherford. All rights reserved.
//

import UIKit

class StartViewController: UIViewController {
	
	let titleLabel: UILabel = {
		let label = UILabel()
		label.translatesAutoresizingMaskIntoConstraints = false
		label.font = UIFont.systemFont(ofSize: 60, weight: .heavy)
		label.textColor = .label
		label.text = "Simon"
		return label
	}()
	
	let startButton: UIButton = {
		let button = UIButton()
		button.translatesAutoresizingMaskIntoConstraints = false
		button.backgroundColor = .systemIndigo
		let attributes = [
			NSAttributedString.Key.font : UIFont.boldSystemFont(ofSize: 24),
			NSAttributedString.Key.foregroundColor : UIColor.white
		]
		button.setAttributedTitle(NSAttributedString(string: "New Game", attributes: attributes), for: .normal)
		button.addTarget(self, action: #selector(presentGameScreen), for: .touchUpInside)
		return button
	}()

	override func viewDidLoad() {
		super.viewDidLoad()
		configureUI()
	}
	
	private func configureUI() {
		view.backgroundColor = .systemBackground
		view.addSubview(titleLabel)
		view.addSubview(startButton)
		NSLayoutConstraint.activate([
			titleLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor),
			titleLabel.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 80),
			
			startButton.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor),
			startButton.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor),
			startButton.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor, constant: -20),
			startButton.heightAnchor.constraint(equalToConstant: 80)
		])
	}
	
	@objc private func presentGameScreen() {
		let gameVC = GameViewController()
		gameVC.modalPresentationStyle = .fullScreen
		present(gameVC, animated: true)
	}
}
