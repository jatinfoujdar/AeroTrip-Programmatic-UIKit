//
//  PassengerLuggageView.swift
//  AeroTrip-Programmatic-UIKit
//
//  Created by jatin foujdar on 28/08/25.
//

import UIKit

class PassengerLuggageView: UIStackView {

    init() {
        super.init(frame: .zero)

        let titleLabel = UILabel()
        titleLabel.text = "Passenger & Luggage"
        titleLabel.font = .systemFont(ofSize: 14)
        titleLabel.textColor = .gray

        let personStack = iconLabelStack(
            icon: "person.2.fill",
            text: "2 Adult",
            iconSize: 20
        )

        let bagStack = iconLabelStack(
            icon: "bag.fill",
            text: "1 Bag",
            iconSize: 16
        )

        let weightStack = iconLabelStack(
            icon: "scalemass.fill",
            text: "6kg",
            iconSize: 16
        )

        let detailStack = UIStackView(arrangedSubviews: [personStack, bagStack, weightStack])
        detailStack.axis = .horizontal
        detailStack.spacing = 60
        detailStack.alignment = .center

        let verticalStack = UIStackView(arrangedSubviews: [titleLabel, detailStack])
        verticalStack.axis = .vertical
        verticalStack.spacing = 4
        verticalStack.alignment = .leading
        verticalStack.translatesAutoresizingMaskIntoConstraints = false

        addArrangedSubview(verticalStack)
        axis = .vertical
        translatesAutoresizingMaskIntoConstraints = false
    }

    private func iconLabelStack(icon: String, text: String, iconSize: CGFloat) -> UIStackView {
        let iconView = UIImageView(image: UIImage(systemName: icon))
        iconView.tintColor = .black
        iconView.contentMode = .scaleAspectFit
        iconView.translatesAutoresizingMaskIntoConstraints = false
        iconView.widthAnchor.constraint(equalToConstant: iconSize).isActive = true
        iconView.heightAnchor.constraint(equalToConstant: iconSize).isActive = true

        let label = UILabel()
        label.text = text
        label.font = .systemFont(ofSize: 18, weight: .bold)

        let stack = UIStackView(arrangedSubviews: [iconView, label])
        stack.axis = .horizontal
        stack.spacing = 4
        return stack
    }

    required init(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
