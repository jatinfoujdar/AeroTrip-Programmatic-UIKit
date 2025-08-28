import UIKit

class AirportInfoView: UIStackView {
    
    init(title: String, city: String, code: String, alignment: NSTextAlignment = .left) {
        super.init(frame: .zero)

        let titleLabel = UILabel()
        titleLabel.text = title
        titleLabel.font = .systemFont(ofSize: 18)
        titleLabel.textColor = .gray
        titleLabel.textAlignment = alignment

        let cityLabel = UILabel()
        cityLabel.text = city
        cityLabel.font = .systemFont(ofSize: 24, weight: .bold)
        cityLabel.textColor = .black
        cityLabel.textAlignment = alignment

        let codeLabel = UILabel()
        codeLabel.text = code
        codeLabel.font = .systemFont(ofSize: 18, weight: .medium)
        codeLabel.textColor = .gray
        codeLabel.textAlignment = alignment

        [titleLabel, cityLabel, codeLabel].forEach {
            addArrangedSubview($0)
        }

        axis = .vertical
        spacing = 4
        self.alignment = alignment == .left ? .leading : .trailing
        translatesAutoresizingMaskIntoConstraints = false
    }

    required init(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
