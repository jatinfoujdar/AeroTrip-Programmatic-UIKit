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
        label.font = UIFont.systemFont(ofSize: 30, weight: .bold)
        label.numberOfLines = 0
        label.textAlignment = .center
        label.textColor = .white
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        layer.cornerRadius = 20
        clipsToBounds = true

        addSubview(imageContainer)
        addSubview(titleLabel)
        
        imageContainer.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            imageContainer.topAnchor.constraint(equalTo: topAnchor),
            imageContainer.leadingAnchor.constraint(equalTo: leadingAnchor),
            imageContainer.trailingAnchor.constraint(equalTo: trailingAnchor),
            imageContainer.bottomAnchor.constraint(equalTo: bottomAnchor),
            
            titleLabel.leadingAnchor.constraint(equalTo: leadingAnchor),
            titleLabel.centerYAnchor.constraint(equalTo: centerYAnchor)
        ])
    }

    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
