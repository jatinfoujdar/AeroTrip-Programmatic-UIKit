//
//  FlightBookingView.swift
//  AeroTrip-Programmatic-UIKit
//
//  Created by jatin foujdar on 26/08/25.
//

import UIKit


class FlightBookingView : UIView{
    
    private let roundTrip: UIButton = {
        
        let button = UIButton(type: .system)
        button.setTitle("Round Trip", for: .normal)
        button.titleLabel?.font = UIFont.systemFont(ofSize: 16, weight: .medium)
        button.setTitleColor(.darkGray, for: .normal)
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
}
