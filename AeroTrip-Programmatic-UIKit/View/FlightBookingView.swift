import UIKit

class FlightBookingView: UIView {
    
 
    
    private let fromLabel: UILabel = {
        let label = UILabel()
        label.text = "From"
        label.font = UIFont.systemFont(ofSize: 14, weight: .regular)
        label.textColor = .darkGray
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    private let fromTextField: UITextField = {
        let textField = UITextField()
        textField.text = "Sydney (SYD)"
        textField.font = UIFont.systemFont(ofSize: 16, weight: .medium)
        textField.borderStyle = .none
        textField.translatesAutoresizingMaskIntoConstraints = false
        return textField
    }()
    
    private let toLabel: UILabel = {
        let label = UILabel()
        label.text = "To"
        label.font = UIFont.systemFont(ofSize: 14, weight: .regular)
        label.textColor = .darkGray
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    private let toTextField: UITextField = {
        let textField = UITextField()
        textField.text = "London (LCY)"
        textField.font = UIFont.systemFont(ofSize: 16, weight: .medium)
        textField.borderStyle = .none
        textField.translatesAutoresizingMaskIntoConstraints = false
        return textField
    }()
    
    private let departDateButton: UIButton = {
        let button = UIButton(type: .system)
        button.setTitle("06/08/20", for: .normal)
        button.titleLabel?.font = UIFont.systemFont(ofSize: 16, weight: .medium)
        button.setTitleColor(.black, for: .normal)
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    
    private let returnDateButton: UIButton = {
        let button = UIButton(type: .system)
        button.setTitle("Return", for: .normal)
        button.titleLabel?.font = UIFont.systemFont(ofSize: 16, weight: .medium)
        button.setTitleColor(.gray, for: .normal)
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    
    private let passengersLabel: UILabel = {
        let label = UILabel()
        label.text = "Passenger & Luggage"
        label.font = UIFont.systemFont(ofSize: 14, weight: .regular)
        label.textColor = .darkGray
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    private let passengersTextField: UITextField = {
        let textField = UITextField()
        textField.text = "2 Kids"
        textField.font = UIFont.systemFont(ofSize: 16, weight: .medium)
        textField.borderStyle = .none
        textField.translatesAutoresizingMaskIntoConstraints = false
        return textField
    }()
    
    private let classLabel: UILabel = {
        let label = UILabel()
        label.text = "Class"
        label.font = UIFont.systemFont(ofSize: 14, weight: .regular)
        label.textColor = .darkGray
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    private let economyButton: UIButton = {
        let button = UIButton(type: .system)
        button.setTitle("Economy", for: .normal)
        button.titleLabel?.font = UIFont.systemFont(ofSize: 16, weight: .medium)
        button.setTitleColor(.black, for: .normal)
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    
    private let businessButton: UIButton = {
        let button = UIButton(type: .system)
        button.setTitle("Business", for: .normal)
        button.titleLabel?.font = UIFont.systemFont(ofSize: 16, weight: .medium)
        button.setTitleColor(.gray, for: .normal)
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    
    private let eliteButton: UIButton = {
        let button = UIButton(type: .system)
        button.setTitle("Elite", for: .normal)
        button.titleLabel?.font = UIFont.systemFont(ofSize: 16, weight: .medium)
        button.setTitleColor(.gray, for: .normal)
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    
    private let nonstopSwitch: UISwitch = {
        let switchControl = UISwitch()
        switchControl.isOn = false
        switchControl.translatesAutoresizingMaskIntoConstraints = false
        return switchControl
    }()
    
    private let nonstopLabel: UILabel = {
        let label = UILabel()
        label.text = "Nonstop flights first"
        label.font = UIFont.systemFont(ofSize: 14, weight: .regular)
        label.textColor = .darkGray
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    private let searchButton: UIButton = {
        let button = UIButton(type: .system)
        button.setTitle("Search Flights", for: .normal)
        button.backgroundColor = UIColor.orange
        button.setTitleColor(.white, for: .normal)
        button.titleLabel?.font = UIFont.systemFont(ofSize: 18, weight: .bold)
        button.layer.cornerRadius = 10
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        backgroundColor = .white
        layer.cornerRadius = 20
        clipsToBounds = true
        
        // Add subviews
        
        addSubview(fromLabel)
        addSubview(fromTextField)
        addSubview(toLabel)
        addSubview(toTextField)
        addSubview(departDateButton)
        addSubview(returnDateButton)
        addSubview(passengersLabel)
        addSubview(passengersTextField)
        addSubview(classLabel)
        addSubview(economyButton)
        addSubview(businessButton)
        addSubview(eliteButton)
        addSubview(nonstopLabel)
        addSubview(nonstopSwitch)
        addSubview(searchButton)
        
        // Setup constraints
        NSLayoutConstraint.activate([
         
            
            fromTextField.topAnchor.constraint(equalTo: fromLabel.bottomAnchor, constant: 5),
            fromTextField.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 20),
            fromTextField.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -20),
            
            toLabel.topAnchor.constraint(equalTo: fromTextField.bottomAnchor, constant: 10),
            toLabel.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 20),
            
            toTextField.topAnchor.constraint(equalTo: toLabel.bottomAnchor, constant: 5),
            toTextField.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 20),
            toTextField.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -20),
            
            departDateButton.topAnchor.constraint(equalTo: toTextField.bottomAnchor, constant: 10),
            departDateButton.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 20),
            
            returnDateButton.topAnchor.constraint(equalTo: toTextField.bottomAnchor, constant: 10),
            returnDateButton.leadingAnchor.constraint(equalTo: departDateButton.trailingAnchor, constant: 20),
            
            passengersLabel.topAnchor.constraint(equalTo: departDateButton.bottomAnchor, constant: 10),
            passengersLabel.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 20),
            
            passengersTextField.topAnchor.constraint(equalTo: passengersLabel.bottomAnchor, constant: 5),
            passengersTextField.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 20),
            passengersTextField.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -20),
            
            classLabel.topAnchor.constraint(equalTo: passengersTextField.bottomAnchor, constant: 10),
            classLabel.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 20),
            
            economyButton.topAnchor.constraint(equalTo: classLabel.bottomAnchor, constant: 5),
            economyButton.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 20),
            
            businessButton.topAnchor.constraint(equalTo: economyButton.topAnchor),
            businessButton.leadingAnchor.constraint(equalTo: economyButton.trailingAnchor, constant: 20),
            
            eliteButton.topAnchor.constraint(equalTo: economyButton.topAnchor),
            eliteButton.leadingAnchor.constraint(equalTo: businessButton.trailingAnchor, constant: 20),
            
            nonstopLabel.topAnchor.constraint(equalTo: economyButton.bottomAnchor, constant: 10),
            nonstopLabel.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 20),
            
            nonstopSwitch.topAnchor.constraint(equalTo: nonstopLabel.topAnchor),
            nonstopSwitch.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -20),
            
            searchButton.topAnchor.constraint(equalTo: nonstopLabel.bottomAnchor, constant: 20),
            searchButton.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 20),
            searchButton.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -20),
            searchButton.heightAnchor.constraint(equalToConstant: 50),
            searchButton.bottomAnchor.constraint(equalTo: bottomAnchor, constant: -20)
        ])
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
