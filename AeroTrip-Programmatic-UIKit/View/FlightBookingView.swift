import UIKit

class FlightBookingView: UIView {
    
    private let departDateSelector = DateSelectorView(title: "Depart")
    private let returnDateSelector = DateSelectorView(title: "Return")
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        backgroundColor = .white
        layer.cornerRadius = 50
        clipsToBounds = true
        
        setupUI()
    }
    
    private func setupUI() {
        let fromView = AirportInfoView(title: "From", city: "Mumbai", code: "(BOM)", alignment: .left)
        let toView = AirportInfoView(title: "To", city: "Delhi", code: "(DEL)", alignment: .right)
        
        // Airplane Image
        let imageContainer = UIImageView(image: UIImage(named: "Aeroplane"))
        imageContainer.translatesAutoresizingMaskIntoConstraints = false
        imageContainer.contentMode = .scaleAspectFit
        imageContainer.widthAnchor.constraint(equalToConstant: 100).isActive = true
        imageContainer.heightAnchor.constraint(equalToConstant: 100).isActive = true
        
        // From - Airplane - To Stack
        let fromToStack = UIStackView(arrangedSubviews: [fromView, imageContainer, toView])
        fromToStack.axis = .horizontal
        fromToStack.distribution = .equalCentering
        fromToStack.alignment = .center
        fromToStack.spacing = 20
        fromToStack.translatesAutoresizingMaskIntoConstraints = false
        
        let departReturnStack = UIStackView(arrangedSubviews: [departDateSelector, returnDateSelector])
        departReturnStack.axis = .horizontal
        departReturnStack.spacing = 40
        departReturnStack.distribution = .equalSpacing
        departReturnStack.translatesAutoresizingMaskIntoConstraints = false
        
        let passengerView = PassengerLuggageView()
        let classView = FlightClassView()
        let nonstopView = NonstopToggleView()
        
        [fromToStack, departReturnStack, passengerView, classView, nonstopView].forEach {
            addSubview($0)
        }
        
        NSLayoutConstraint.activate([
            fromToStack.topAnchor.constraint(equalTo: topAnchor, constant: 30),
            fromToStack.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 30),
            fromToStack.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -30),
            
            departReturnStack.topAnchor.constraint(equalTo: fromToStack.bottomAnchor, constant: 30),
            departReturnStack.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 30),
            departReturnStack.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -30),
            
            passengerView.topAnchor.constraint(equalTo: departReturnStack.bottomAnchor, constant: 30),
            passengerView.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 30),
            passengerView.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -30),
            
            classView.topAnchor.constraint(equalTo: passengerView.bottomAnchor, constant: 30),
            classView.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 30),
            classView.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -30),
            
            nonstopView.topAnchor.constraint(equalTo: classView.bottomAnchor, constant: 30),
            nonstopView.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 20),
            nonstopView.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -20)
        ])
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
