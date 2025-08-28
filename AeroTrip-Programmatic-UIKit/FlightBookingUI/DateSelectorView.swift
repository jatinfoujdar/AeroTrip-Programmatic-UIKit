//
//  DateSelectorView.swift
//  AeroTrip-Programmatic-UIKit
//
//  Created by jatin foujdar on 28/08/25.
//

import UIKit

class DateSelectorView: UIStackView {
    
    let dateLabel = UILabel()
    let tapArea = UIStackView()

    init(title: String, defaultDate: Date = Date()) {
        super.init(frame: .zero)
        
        let titleLabel = UILabel()
        titleLabel.text = title
        titleLabel.font = .systemFont(ofSize: 14)
        titleLabel.textColor = .gray

        dateLabel.text = DateFormatter.localizedString(from: defaultDate, dateStyle: .short, timeStyle: .none)
        dateLabel.font = .systemFont(ofSize: 18, weight: .bold)
        dateLabel.textColor = .black

        let calendarIcon = UIImageView(image: UIImage(systemName: "calendar"))
        calendarIcon.tintColor = .black
        calendarIcon.contentMode = .scaleAspectFit
        calendarIcon.widthAnchor.constraint(equalToConstant: 20).isActive = true
        calendarIcon.heightAnchor.constraint(equalToConstant: 20).isActive = true

        tapArea.axis = .horizontal
        tapArea.spacing = 8
        tapArea.addArrangedSubview(calendarIcon)
        tapArea.addArrangedSubview(dateLabel)
        tapArea.isUserInteractionEnabled = true
        tapArea.alignment = .center

        let verticalStack = UIStackView(arrangedSubviews: [titleLabel, tapArea])
        verticalStack.axis = .vertical
        verticalStack.spacing = 4
        verticalStack.alignment = .leading

        addArrangedSubview(verticalStack)
        axis = .vertical
        translatesAutoresizingMaskIntoConstraints = false
    }

    required init(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
