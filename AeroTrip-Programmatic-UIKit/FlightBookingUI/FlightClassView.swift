//
//  FlightClassView.swift
//  AeroTrip-Programmatic-UIKit
//
//  Created by jatin foujdar on 28/08/25.
//

import UIKit

class FlightClassView: UIStackView {

    init() {
        super.init(frame: .zero)

        let titleLabel = UILabel()
        titleLabel.text = "Class"
        titleLabel.font = .systemFont(ofSize: 14)
        titleLabel.textColor = .gray

        let economy = iconLabelStack(icon: "figure.seated.side.right.fan", text: "Economy", iconSize: 20)
        let business = iconLabelStack(icon: "figure.seated.side.right.steeringwheel", text: "Business", iconSize: 16)
        let elite = iconLabelStack(icon: "carseat.right.fan.fill", text: "Elite", iconSize: 16)

        let detailStack = UIStackView(arrangedSubviews: [economy, business, elite])
        detailStack.axis = .horizontal
        detailStack.spacing = 30
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
