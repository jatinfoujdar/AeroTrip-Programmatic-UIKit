//
//  NonstopToggleView.swift
//  AeroTrip-Programmatic-UIKit
//
//  Created by jatin foujdar on 28/08/25.
//

import UIKit

class NonstopToggleView: UIStackView {

    let toggleSwitch = UISwitch()
    let searchButton = PrimaryButton(title: "Search Flights")

    init() {
        super.init(frame: .zero)

 
        let horizontalStack = UIStackView()
        horizontalStack.axis = .horizontal
        horizontalStack.spacing = 10
        horizontalStack.alignment = .center
        horizontalStack.distribution = .equalSpacing

        let label = UILabel()
        label.text = "Nonstop Flight"
        label.font = .systemFont(ofSize: 16, weight: .medium)
        label.textColor = .black

        toggleSwitch.isOn = false
        toggleSwitch.onTintColor = .systemBlue

        horizontalStack.addArrangedSubview(label)
        horizontalStack.addArrangedSubview(toggleSwitch)

     
        axis = .vertical
        spacing = 40
        alignment = .fill
        distribution = .fill
        translatesAutoresizingMaskIntoConstraints = false

        addArrangedSubview(horizontalStack)
        addArrangedSubview(searchButton)

        
        searchButton.addTarget(self, action: #selector(handleSearchTapped), for: .touchUpInside)
    }

    @objc private func handleSearchTapped() {
        print("Search button tapped. Nonstop is: \(toggleSwitch.isOn)")
        
    }

    required init(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}

