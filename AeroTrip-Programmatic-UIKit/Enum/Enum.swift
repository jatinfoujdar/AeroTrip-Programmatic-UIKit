//
//  Enum.swift
//  AeroTrip-Programmatic-UIKit
//
//  Created by jatin foujdar on 25/08/25.
//

import Foundation
import UIKit

enum FlightClassFlight : String, CaseIterable{
    case Economy
    case Business
    case Elite
 
    
    var icons: UIImage{
        switch self{
        case .Economy:
            return UIImage(named: "Economy")!
        case .Business:
            return UIImage(named: "Business")!
        case .Elite:
            return UIImage(named: "Elite")!
        }
    }
    
    var seats: Int{
        switch self{
        case .Business:
            return 36
        case .Economy:
            return 24
        case .Elite:
            return 10
        }
    }
    
}
