//
//  FlightHeaderView.swift
//  AeroTrip-Programmatic-UIKit
//
//  Created by jatin foujdar on 25/08/25.
//

import UIKit

class FlightHeaderView: UIView {
    
    private let imageContainer = TintedImageView(
        image: UIImage(named: "HomePage"),
        overlayColor: UIColor(named: "PrimaryColors") ?? .darkGray,
        alpha: 0.4
    )
    
    private let titleLabel: UILabel = {
        let label = UILabel()
        label.text = "Book Your \n Flight!"
        label.font = UIFont.systemFont(ofSize: 32, weight: .bold)
        label.numberOfLines = 0
        label.textAlignment = .left
        label.textColor = .white
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    private let roundTripButton: UIButton = {
        let button = UIButton(type: .system)
        button.setTitle("Round Trip", for: .normal)
        button.titleLabel?.font = UIFont.systemFont(ofSize: 20, weight: .bold)
        button.setTitleColor(.white, for: .normal)
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    
    private let oneWayButton: UIButton = {
        let button = UIButton(type: .system)
        button.setTitle("One-Way", for: .normal)
        button.titleLabel?.font = UIFont.systemFont(ofSize: 20, weight: .bold)
        button.setTitleColor(.white, for: .normal)
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    
    private lazy var buttonStack: UIStackView = {
        let stack = UIStackView(arrangedSubviews: [roundTripButton, oneWayButton])
        stack.axis = .horizontal
        stack.spacing = 20
        stack.alignment = .center
        stack.distribution = .fill
        stack.translatesAutoresizingMaskIntoConstraints = false
        return stack
    }()

    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        layer.cornerRadius = 20
        clipsToBounds = true
        
        addSubview(imageContainer)
        addSubview(titleLabel)
        addSubview(buttonStack)
        
        imageContainer.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            // Background Image
            imageContainer.topAnchor.constraint(equalTo: topAnchor),
            imageContainer.leadingAnchor.constraint(equalTo: leadingAnchor),
            imageContainer.trailingAnchor.constraint(equalTo: trailingAnchor),
            imageContainer.bottomAnchor.constraint(equalTo: bottomAnchor),
            
            // Title label at the top
            titleLabel.topAnchor.constraint(equalTo: topAnchor, constant: 70),
            titleLabel.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 20),
            titleLabel.trailingAnchor.constraint(equalTo: trailingAnchor),
            
            // Buttons at the bottom
            buttonStack.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 30),
            buttonStack.bottomAnchor.constraint(equalTo: bottomAnchor),
            buttonStack.heightAnchor.constraint(equalToConstant: 40)
        ])
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
