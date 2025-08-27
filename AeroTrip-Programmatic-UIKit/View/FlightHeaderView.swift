import UIKit

class FlightHeaderView: UIView {
    
    private let imageContainer = TintedImageView(
        image: UIImage(named: "HomePage"),
        overlayColor: UIColor(named: "PrimaryColors") ?? .darkGray,
        alpha: 0.4
    )
    
    private let titleLabel: UILabel = {
        let label = UILabel()
        label.text = "Book Your \n Flight!"
        label.font = UIFont.systemFont(ofSize: 32, weight: .bold)
        label.numberOfLines = 0
        label.textAlignment = .left
        label.textColor = .white
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    
    private let roundTripButton: UIButton = {
        let button = UIButton(type: .system)
        button.setTitle("Round Trip", for: .normal)
        button.titleLabel?.font = UIFont.systemFont(ofSize: 20, weight: .bold)
        button.setTitleColor(.white, for: .normal)
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    
    private let oneWayButton: UIButton = {
        let button = UIButton(type: .system)
        button.setTitle("One-Way", for: .normal)
        button.titleLabel?.font = UIFont.systemFont(ofSize: 20, weight: .bold)
        button.setTitleColor(.white, for: .normal)
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    

    private let roundTripUnderline: UIView = {
        let view = UIView()
        view.backgroundColor = .white
        view.isHidden = false
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    private let oneWayUnderline: UIView = {
        let view = UIView()
        view.backgroundColor = .white
        view.isHidden = true
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
  
    private lazy var buttonStack: UIStackView = {
        let stack = UIStackView(arrangedSubviews: [roundTripButton, oneWayButton])
        stack.axis = .horizontal
        stack.spacing = 20
        stack.alignment = .center
        stack.distribution = .fill
        stack.translatesAutoresizingMaskIntoConstraints = false
        return stack
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        layer.cornerRadius = 20
        clipsToBounds = true
        
        addSubview(imageContainer)
        addSubview(titleLabel)
        addSubview(buttonStack)
        addSubview(roundTripUnderline)
        addSubview(oneWayUnderline)
        
        imageContainer.translatesAutoresizingMaskIntoConstraints = false
        
      
        roundTripButton.addTarget(self, action: #selector(selectRoundTrip), for: .touchUpInside)
        oneWayButton.addTarget(self, action: #selector(selectOneWay), for: .touchUpInside)
        
        setupConstraints()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    
    private func setupConstraints() {
        NSLayoutConstraint.activate([
            
            imageContainer.topAnchor.constraint(equalTo: topAnchor),
            imageContainer.leadingAnchor.constraint(equalTo: leadingAnchor),
            imageContainer.trailingAnchor.constraint(equalTo: trailingAnchor),
            imageContainer.bottomAnchor.constraint(equalTo: bottomAnchor),
            
         
            titleLabel.topAnchor.constraint(equalTo: topAnchor, constant: 70),
            titleLabel.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 20),
            titleLabel.trailingAnchor.constraint(equalTo: trailingAnchor),
            
         
            buttonStack.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 30),
            buttonStack.bottomAnchor.constraint(equalTo: bottomAnchor, constant: -10),
            buttonStack.heightAnchor.constraint(equalToConstant: 40),
            
            
            roundTripUnderline.topAnchor.constraint(equalTo: roundTripButton.bottomAnchor, constant: 2),
            roundTripUnderline.centerXAnchor.constraint(equalTo: roundTripButton.centerXAnchor),
            roundTripUnderline.widthAnchor.constraint(equalTo: roundTripButton.widthAnchor, multiplier: 0.8),
            roundTripUnderline.heightAnchor.constraint(equalToConstant: 2),
            
            
            oneWayUnderline.topAnchor.constraint(equalTo: oneWayButton.bottomAnchor, constant: 2),
            oneWayUnderline.centerXAnchor.constraint(equalTo: oneWayButton.centerXAnchor),
            oneWayUnderline.widthAnchor.constraint(equalTo: oneWayButton.widthAnchor, multiplier: 0.8),
            oneWayUnderline.heightAnchor.constraint(equalToConstant: 2),
        ])
    }
    
   
    @objc private func selectRoundTrip() {
        roundTripUnderline.isHidden = false
        oneWayUnderline.isHidden = true
       
    }
    
    @objc private func selectOneWay() {
        roundTripUnderline.isHidden = true
        oneWayUnderline.isHidden = false
        
    }
}
