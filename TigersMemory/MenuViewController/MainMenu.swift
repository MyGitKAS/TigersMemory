
import UIKit
import SnapKit

class MainMenu: UIStackView {
    
    private let playButton = PrimaryButton()
    private let shopButton = SecondaryButton()
    private let rulesButton = SecondaryButton()
    private let progressButton = SecondaryButton()
    private let privancyPolisyButton: UIButton = {
    let button = UIButton()
        button.setTitle("Privancy Polisy", for: .normal)
        button.titleLabel?.font = UIFont(name: "CHOWFUN", size: 15)
        button.setTitleColor(.white, for: .normal)
        button.menuShadow()
        return button
    }()
    private let secondStack = UIStackView()
    private var buttonsArray = [UIButton]()
    
    var callbackButtonTapped: ((Int) -> ())?
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        buttonsArray = [playButton,shopButton,rulesButton,progressButton,privancyPolisyButton]
        configure()
    }
    
    required init(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func configure() {
        axis = .vertical
        spacing = 20
        addArrangedSubview(playButton)
        
        secondStack.axis = .vertical
        secondStack.spacing = 20
        secondStack.addArrangedSubview(shopButton)
        secondStack.addArrangedSubview(rulesButton)
        secondStack.addArrangedSubview(progressButton)
        secondStack.layoutMargins = UIEdgeInsets(top: 0, left: 30, bottom: 0, right: 30)
        secondStack.isLayoutMarginsRelativeArrangement = true
        
        addArrangedSubview(secondStack)
        addArrangedSubview(privancyPolisyButton)
        
        shopButton.setTitle("Shop", for: .normal)
        rulesButton.setTitle("Rules", for: .normal)
        progressButton.setTitle("Progress", for: .normal)
        
        for (index,button) in buttonsArray.enumerated() {
            button.tag = index
            button.addTarget(self, action: #selector(buttonTapped), for: .touchUpInside)
        }
    }
    @objc func buttonTapped(_ sender: UIButton) {
        callbackButtonTapped?(sender.tag)
    
    }
    
}

extension MainMenu {
    private func setConstraints() {
        playButton.snp.makeConstraints { make in
            make.height.equalTo(96)
            make.width.equalTo(220)
        }
    }
}
