//
//  GameViewController.swift
//  Simon
//
//  Created by Chad Rutherford on 5/24/20.
//  Copyright © 2020 Chad Rutherford. All rights reserved.
//

import UIKit

class GameViewController: UIViewController {
	let endGameButton: UIButton = {
		let button = UIButton()
		button.translatesAutoresizingMaskIntoConstraints = false
		let attributes = [
			NSAttributedString.Key.font : UIFont.systemFont(ofSize: 20),
			NSAttributedString.Key.foregroundColor : UIColor.white
		]
		button.setAttributedTitle(NSAttributedString(string: "End Game", attributes: attributes), for: .normal)
		button.backgroundColor = .systemIndigo
		return button
	}()
	
	let levelLabel: UILabel = {
		let label = UILabel()
		label.translatesAutoresizingMaskIntoConstraints = false
		label.text = "Level 1"
		label.textColor = .label
		label.font = UIFont.systemFont(ofSize: 20, weight: .semibold)
		return label
	}()
	
	let scoreLabel: UILabel = {
		let label = UILabel()
		label.translatesAutoresizingMaskIntoConstraints = false
		label.text = "100 pts"
		label.textColor = .label
		label.font = UIFont.systemFont(ofSize: 25, weight: .semibold)
		return label
	}()
	
	let scoreStackView: UIStackView = {
		let stackView = UIStackView()
		stackView.translatesAutoresizingMaskIntoConstraints = false
		stackView.axis = .vertical
		stackView.alignment = .trailing
		stackView.distribution = .fill
		stackView.spacing = 8
		return stackView
	}()
	
	let topSimonStackView: UIStackView = {
		let stackView = UIStackView()
		stackView.translatesAutoresizingMaskIntoConstraints = false
		stackView.axis = .horizontal
		stackView.alignment = .center
		stackView.distribution = .fillEqually
		stackView.spacing = 10
		return stackView
	}()
	
	let bottomSimonStackView: UIStackView = {
		let stackView = UIStackView()
		stackView.translatesAutoresizingMaskIntoConstraints = false
		stackView.axis = .horizontal
		stackView.alignment = .center
		stackView.distribution = .fillEqually
		stackView.spacing = 10
		return stackView
	}()
	
	let redButton: UIButton = {
		let button = UIButton()
		button.translatesAutoresizingMaskIntoConstraints = false
		button.backgroundColor = .systemRed
		return button
	}()
	
	let greenButton: UIButton = {
		let button = UIButton()
		button.translatesAutoresizingMaskIntoConstraints = false
		button.backgroundColor = .systemGreen
		return button
	}()
	
	let yellowButton: UIButton = {
		let button = UIButton()
		button.translatesAutoresizingMaskIntoConstraints = false
		button.backgroundColor = .systemYellow
		return button
	}()
	
	let blueButton: UIButton = {
		let button = UIButton()
		button.translatesAutoresizingMaskIntoConstraints = false
		button.backgroundColor = .systemBlue
		return button
	}()
	
	override func viewDidLoad() {
		super.viewDidLoad()
		configureUI()
	}
	
	private func configureUI() {
		view.backgroundColor = .systemBackground
		view.addSubview(endGameButton)
		view.addSubview(scoreStackView)
		scoreStackView.addArrangedSubview(levelLabel)
		scoreStackView.addArrangedSubview(scoreLabel)
		view.addSubview(topSimonStackView)
		topSimonStackView.addArrangedSubview(redButton)
		topSimonStackView.addArrangedSubview(greenButton)
		view.addSubview(bottomSimonStackView)
		bottomSimonStackView.addArrangedSubview(yellowButton)
		bottomSimonStackView.addArrangedSubview(blueButton)
		NSLayoutConstraint.activate([
			endGameButton.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor, constant: 20),
			endGameButton.trailingAnchor.constraint(equalTo: scoreStackView.leadingAnchor, constant: -8),
			endGameButton.centerYAnchor.constraint(equalTo: scoreStackView.centerYAnchor),
			endGameButton.widthAnchor.constraint(equalTo: view.widthAnchor, multiplier: 0.3),
			
			scoreStackView.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor, constant: -20),
			scoreStackView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor),
			
			topSimonStackView.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor, constant: 10),
			topSimonStackView.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor, constant: -10),
			topSimonStackView.bottomAnchor.constraint(equalTo: bottomSimonStackView.topAnchor, constant: -10),
			
			bottomSimonStackView.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor, constant: 10),
			bottomSimonStackView.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor, constant: -10),
			bottomSimonStackView.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor),
			
			blueButton.heightAnchor.constraint(equalTo: redButton.heightAnchor, multiplier: 1),
			blueButton.heightAnchor.constraint(equalTo: yellowButton.heightAnchor, multiplier: 1),
			blueButton.heightAnchor.constraint(equalTo: greenButton.heightAnchor, multiplier: 1),
			blueButton.heightAnchor.constraint(equalTo: view.heightAnchor, multiplier: 0.4)
		])
	}
}
