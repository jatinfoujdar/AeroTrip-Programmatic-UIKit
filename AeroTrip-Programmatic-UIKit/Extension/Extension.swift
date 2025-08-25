//
//  TintedImageView.swift
//  AeroTrip-Programmatic-UIKit
//
//  Created by jatin foujdar on 25/08/25.
//

import UIKit

class TintedImageView: UIView {
    
    private let imageView = UIImageView()
    private let overlayView = UIView()

    init(image: UIImage?, overlayColor: UIColor, alpha: CGFloat) {
        super.init(frame: .zero)

        imageView.image = image
        imageView.contentMode = .scaleAspectFill
        imageView.clipsToBounds = true
        imageView.translatesAutoresizingMaskIntoConstraints = false

        overlayView.backgroundColor = overlayColor.withAlphaComponent(alpha)
        overlayView.translatesAutoresizingMaskIntoConstraints = false

        addSubview(imageView)
        addSubview(overlayView)

        NSLayoutConstraint.activate([
            imageView.topAnchor.constraint(equalTo: topAnchor),
            imageView.leadingAnchor.constraint(equalTo: leadingAnchor),
            imageView.trailingAnchor.constraint(equalTo: trailingAnchor),
            imageView.bottomAnchor.constraint(equalTo: bottomAnchor),

            overlayView.topAnchor.constraint(equalTo: topAnchor),
            overlayView.leadingAnchor.constraint(equalTo: leadingAnchor),
            overlayView.trailingAnchor.constraint(equalTo: trailingAnchor),
            overlayView.bottomAnchor.constraint(equalTo: bottomAnchor)
        ])
    }

    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
