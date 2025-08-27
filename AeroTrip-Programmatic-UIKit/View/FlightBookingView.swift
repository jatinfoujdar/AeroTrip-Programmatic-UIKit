import UIKit

class FlightBookingView: UIView {
    
 
    private let imageContainer :UIImageView = {
       let imageView = UIImageView()
        imageView.image = UIImage(named: "Aeroplane")
        imageView.contentMode = .scaleAspectFit
        imageView.translatesAutoresizingMaskIntoConstraints = false
        return imageView
    }()
    
    private let fromStack: UIStackView = {
          let title = UILabel()
          title.text = "From"
          title.font = UIFont.systemFont(ofSize: 14)
          title.textColor = .gray
          
          let city = UILabel()
          city.text = "Sydney"
          city.font = UIFont.systemFont(ofSize: 18, weight: .bold)
          city.textColor = .black
          
          let code = UILabel()
          code.text = "(SYD)"
          code.font = UIFont.systemFont(ofSize: 14, weight: .medium)
          code.textColor = .gray
          
          let stack = UIStackView(arrangedSubviews: [title, city, code])
          stack.axis = .vertical
          stack.alignment = .leading
          stack.spacing = 4
          stack.translatesAutoresizingMaskIntoConstraints = false
          return stack
      }()
    
    private let toStack: UIStackView = {
           let title = UILabel()
           title.text = "To"
           title.font = UIFont.systemFont(ofSize: 14)
           title.textColor = .gray
           
           let city = UILabel()
           city.text = "London"
           city.font = UIFont.systemFont(ofSize: 18, weight: .bold)
           city.textColor = .black
           
           let code = UILabel()
           code.text = "(LCY)"
           code.font = UIFont.systemFont(ofSize: 14, weight: .medium)
           code.textColor = .gray
           
           let stack = UIStackView(arrangedSubviews: [title, city, code])
           stack.axis = .vertical
           stack.alignment = .trailing
           stack.spacing = 4
           stack.translatesAutoresizingMaskIntoConstraints = false
           return stack
       }()
    
    private let fromToStack: UIStackView = {
        let stack = UIStackView()
        stack.axis = .horizontal
        stack.distribution = .equalSpacing
        stack.alignment = .top
        stack.spacing = 40
        stack.translatesAutoresizingMaskIntoConstraints = false
        return stack
    }()
    
    private let departStack: UIStackView = {
        let title = UILabel()
        title.text = "Depart"
        title.font = UIFont.systemFont(ofSize: 14)
        title.textColor = .gray

        let date = UILabel()
        date.text = "6/08/20"
        date.font = UIFont.systemFont(ofSize: 18, weight: .bold)
        date.textColor = .black

        let stack = UIStackView(arrangedSubviews: [title, date])
        stack.axis = .vertical
        stack.alignment = .leading
        stack.spacing = 4
        stack.translatesAutoresizingMaskIntoConstraints = false
        return stack
    }()

    private let returnStack: UIStackView = {
        let title = UILabel()
        title.text = "Return"
        title.font = UIFont.systemFont(ofSize: 14)
        title.textColor = .gray

        let date = UILabel()
        date.text = "Select Date"
        date.font = UIFont.systemFont(ofSize: 18, weight: .bold)
        date.textColor = .lightGray
        

        let stack = UIStackView(arrangedSubviews: [title, date])
        stack.axis = .vertical
        stack.alignment = .trailing
        stack.spacing = 4
        stack.translatesAutoresizingMaskIntoConstraints = false
        return stack
    }()

    private let departReturnStack: UIStackView = {
        let stack = UIStackView()
        stack.axis = .horizontal
        stack.distribution = .equalSpacing
        stack.alignment = .top
        stack.spacing = 40
        stack.translatesAutoresizingMaskIntoConstraints = false
        return stack
    }()

    private let passengerLuggageStack: UIStackView = {
        let title = UILabel()
        title.text = "Passenger & Luggage"
        title.font = UIFont.systemFont(ofSize: 14)
        title.textColor = .gray

        // 👤 Person icon + label
        
        let personIcon = UIImageView(image: UIImage(systemName: "person.2.fill"))
        personIcon.tintColor = .black
        personIcon.contentMode = .scaleAspectFit
        personIcon.translatesAutoresizingMaskIntoConstraints = false
        personIcon.widthAnchor.constraint(equalToConstant: 20).isActive = true
        personIcon.heightAnchor.constraint(equalToConstant: 20).isActive = true

        let personLabel = UILabel()
        personLabel.text = "2 Adult"
        personLabel.font = UIFont.systemFont(ofSize: 18, weight: .bold)

        let personStack = UIStackView(arrangedSubviews: [personIcon, personLabel])
        personStack.axis = .horizontal
        personStack.spacing = 4

        // 🧳 Luggage icon + label
        let bagIcon = UIImageView(image: UIImage(systemName: "bag.fill"))
        bagIcon.tintColor = .black
        bagIcon.contentMode = .scaleAspectFit
        bagIcon.translatesAutoresizingMaskIntoConstraints = false
        bagIcon.widthAnchor.constraint(equalToConstant: 16).isActive = true
        bagIcon.heightAnchor.constraint(equalToConstant: 16).isActive = true

        let bagLabel = UILabel()
        bagLabel.text = "1 Bag"
        bagLabel.font = UIFont.systemFont(ofSize: 18, weight: .bold)

        let bagStack = UIStackView(arrangedSubviews: [bagIcon, bagLabel])
        bagStack.axis = .horizontal
        bagStack.spacing = 4

        // ⚖️ Weight icon + label
        let weightIcon = UIImageView(image: UIImage(systemName: "scalemass.fill"))
        weightIcon.tintColor = .black
        weightIcon.contentMode = .scaleAspectFit
        weightIcon.translatesAutoresizingMaskIntoConstraints = false
        weightIcon.widthAnchor.constraint(equalToConstant: 16).isActive = true
        weightIcon.heightAnchor.constraint(equalToConstant: 16).isActive = true

        let weightLabel = UILabel()
        weightLabel.text = "6kg"
        weightLabel.font = UIFont.systemFont(ofSize: 18, weight: .bold)

        let weightStack = UIStackView(arrangedSubviews: [weightIcon, weightLabel])
        weightStack.axis = .horizontal
        weightStack.spacing = 4

        // Combine all into horizontal stack
        let detailsStack = UIStackView(arrangedSubviews: [personStack, bagStack, weightStack])
        detailsStack.axis = .horizontal
        detailsStack.spacing = 60
        detailsStack.alignment = .center
        detailsStack.translatesAutoresizingMaskIntoConstraints = false

        // Vertical stack: title + detail row
        let stack = UIStackView(arrangedSubviews: [title, detailsStack])
        stack.axis = .vertical
        stack.alignment = .leading
        stack.spacing = 4
        stack.translatesAutoresizingMaskIntoConstraints = false

        return stack
    }()

    private let classStack: UIStackView = {
        let title = UILabel()
        title.text = "Class"
        title.font = UIFont.systemFont(ofSize: 14)
        title.textColor = .gray

        // 👤 Person icon + label
        
        let personIcon = UIImageView(image: UIImage(systemName: "figure.seated.side.right.fan"))
        personIcon.tintColor = .black
        personIcon.contentMode = .scaleAspectFit
        personIcon.translatesAutoresizingMaskIntoConstraints = false
        personIcon.widthAnchor.constraint(equalToConstant: 20).isActive = true
        personIcon.heightAnchor.constraint(equalToConstant: 20).isActive = true

        let personLabel = UILabel()
        personLabel.text = "Economy"
        personLabel.font = UIFont.systemFont(ofSize: 18, weight: .bold)

        let personStack = UIStackView(arrangedSubviews: [personIcon, personLabel])
        personStack.axis = .horizontal
        personStack.spacing = 4

        // 🧳 Luggage icon + label
        let bagIcon = UIImageView(image: UIImage(systemName: "figure.seated.side.right.steeringwheel"))
        bagIcon.tintColor = .black
        bagIcon.contentMode = .scaleAspectFit
        bagIcon.translatesAutoresizingMaskIntoConstraints = false
        bagIcon.widthAnchor.constraint(equalToConstant: 16).isActive = true
        bagIcon.heightAnchor.constraint(equalToConstant: 16).isActive = true

        let bagLabel = UILabel()
        bagLabel.text = "Business"
        bagLabel.font = UIFont.systemFont(ofSize: 18, weight: .bold)

        let bagStack = UIStackView(arrangedSubviews: [bagIcon, bagLabel])
        bagStack.axis = .horizontal
        bagStack.spacing = 4

        // ⚖️ Weight icon + label
        let weightIcon = UIImageView(image: UIImage(systemName: "carseat.right.fan.fill"))
        weightIcon.tintColor = .black
        weightIcon.contentMode = .scaleAspectFit
        weightIcon.translatesAutoresizingMaskIntoConstraints = false
        weightIcon.widthAnchor.constraint(equalToConstant: 16).isActive = true
        weightIcon.heightAnchor.constraint(equalToConstant: 16).isActive = true

        let weightLabel = UILabel()
        weightLabel.text = "Elite"
        weightLabel.font = UIFont.systemFont(ofSize: 18, weight: .bold)

        let weightStack = UIStackView(arrangedSubviews: [weightIcon, weightLabel])
        weightStack.axis = .horizontal
        weightStack.spacing = 4

        // Combine all into horizontal stack
        let detailsStack = UIStackView(arrangedSubviews: [personStack, bagStack, weightStack])
        detailsStack.axis = .horizontal
        detailsStack.spacing = 30
        detailsStack.alignment = .center
        detailsStack.translatesAutoresizingMaskIntoConstraints = false

        // Vertical stack: title + detail row
        let stack = UIStackView(arrangedSubviews: [title, detailsStack])
        stack.axis = .vertical
        stack.alignment = .leading
        stack.spacing = 4
        stack.translatesAutoresizingMaskIntoConstraints = false

        return stack
    }()

    private let nonstopTitleLabel: UILabel = {
        let label = UILabel()
        label.text = "Nonstop Flight"
        label.font = UIFont.systemFont(ofSize: 16, weight: .medium)
        label.textColor = .black
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()

    private let nonstopSwitch: UISwitch = {
        let toggle = UISwitch()
        toggle.isOn = false
        toggle.onTintColor = .systemBlue
        toggle.translatesAutoresizingMaskIntoConstraints = false
        return toggle
    }()

    private let nonstopStack: UIStackView = {
        let stack = UIStackView()
        stack.axis = .horizontal
        stack.spacing = 10
        stack.alignment = .center
        stack.distribution = .equalSpacing
        stack.translatesAutoresizingMaskIntoConstraints = false
        return stack
    }()




    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        backgroundColor = .white
        layer.cornerRadius = 50
        clipsToBounds = true
        
        // Add subviews
        addSubview(imageContainer)
        fromToStack.addArrangedSubview(fromStack)
        fromToStack.addArrangedSubview(toStack)
        addSubview(fromToStack)
        
        departReturnStack.addArrangedSubview(departStack)
        departReturnStack.addArrangedSubview(returnStack)
        addSubview(departReturnStack)
        
        addSubview(passengerLuggageStack)
        addSubview(classStack)
      
        nonstopStack.addArrangedSubview(nonstopTitleLabel)
        nonstopStack.addArrangedSubview(nonstopSwitch)
        addSubview(nonstopStack)
        
        // Setup constraints
        NSLayoutConstraint.activate([
            imageContainer.topAnchor.constraint(equalTo: topAnchor, constant: 20),
            imageContainer.centerXAnchor.constraint(equalTo: centerXAnchor),
            imageContainer.widthAnchor.constraint(equalToConstant: 80),
            imageContainer.heightAnchor.constraint(equalToConstant: 80),
            
            fromToStack.topAnchor.constraint(equalTo: topAnchor, constant: 30),
            fromToStack.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 30),
            fromToStack.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -30),
            
            departReturnStack.topAnchor.constraint(equalTo: fromToStack.bottomAnchor, constant: 30),
            departReturnStack.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 30),
            departReturnStack.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -30),
            
            passengerLuggageStack.topAnchor.constraint(equalTo: departReturnStack.bottomAnchor, constant: 30),
            passengerLuggageStack.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 30),
            passengerLuggageStack.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -30),
            
           classStack.topAnchor.constraint(equalTo: passengerLuggageStack.bottomAnchor, constant: 30),
           classStack.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 30),
           classStack.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -30),
        
            nonstopStack.topAnchor.constraint(equalTo: classStack.bottomAnchor, constant: 30),
            nonstopStack.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 20),
            nonstopStack.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -20)
        ])
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
