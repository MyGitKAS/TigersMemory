
import UIKit
import SnapKit

class RulesStackView: UIStackView {
    
    private let backgroundSubstrate = UIImageView()
    private let mainTextLabel =  UILabel()
    private let textView = UIView()
    private let textLabel = UILabel()
    private let text = "This is a card game where all cards are initially placed face down on the playing surface, and two cards are revealed on each turn. The objective of the game is to match pairs of identical cards. Upon completing a level, a wheel appears, offering a chance to earn additional points."
    
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        backgroundSubstrate.image = UIImage(named: "BackgroundSubstrate")
        mainTextLabel.theTitle(text: "Rules")
        
        axis = .vertical
        spacing = 20
        
        
        textLabel.text = text
        textLabel.font = UIFont(name: "Avenir-Medium", size: 14)
        textLabel.textAlignment = .center
        textLabel.numberOfLines = 0
        backgroundSubstrate.addSubview(textLabel)
        
        addArrangedSubview(mainTextLabel)
        addArrangedSubview(backgroundSubstrate)
        
        setConstraints()
    }
    
    required init(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}

extension RulesStackView {
    private func setConstraints() {
        textLabel.snp.makeConstraints { make in
            make.top.leading.equalTo(backgroundSubstrate).offset(30)
            make.bottom.trailing.equalTo(backgroundSubstrate).inset(30)
        }
    }
}
