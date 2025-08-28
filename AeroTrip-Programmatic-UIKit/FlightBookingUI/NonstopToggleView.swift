//
//  NonstopToggleView.swift
//  AeroTrip-Programmatic-UIKit
//
//  Created by jatin foujdar on 28/08/25.
//

import UIKit

class NonstopToggleView: UIStackView {

    let toggleSwitch = UISwitch()

    init() {
        super.init(frame: .zero)

        let label = UILabel()
        label.text = "Nonstop Flight"
        label.font = .systemFont(ofSize: 16, weight: .medium)
        label.textColor = .black

        toggleSwitch.isOn = false
        toggleSwitch.onTintColor = .systemBlue

        addArrangedSubview(label)
        addArrangedSubview(toggleSwitch)

        axis = .horizontal
        spacing = 10
        alignment = .center
        distribution = .equalSpacing
        translatesAutoresizingMaskIntoConstraints = false
    }

    required init(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
