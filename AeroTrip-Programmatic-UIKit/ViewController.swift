import UIKit
import SwiftUI

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = UIColor(named: "PrimaryColors") ?? .systemBlue

        let headerView = FlightHeaderView()
        headerView.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(headerView)
        
        let flightView = FlightBookingView()
        flightView.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(flightView)
        
        NSLayoutConstraint.activate([
          
            headerView.topAnchor.constraint(equalTo: view.topAnchor),
            headerView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            headerView.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            headerView.heightAnchor.constraint(equalToConstant: 270),

           
            flightView.topAnchor.constraint(equalTo: headerView.bottomAnchor),
            flightView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            flightView.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            flightView.bottomAnchor.constraint(equalTo: view.bottomAnchor) 
        ])

    }
}

struct ViewController_Previews: PreviewProvider {
    static var previews: some View {
        ViewControllerPreview {
            ViewController()
        }
        .ignoresSafeArea()
    }
}
