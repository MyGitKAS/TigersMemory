
import UIKit
import SnapKit

class ShopCardCoin: UIStackView {
    
    private var isSelected = false
    private let button = UIButton()
    private let backView = UIView()
    private let label: UILabel = {
        let label = UILabel()
        label.text = "Free"
        label.font = UIFont(name: "CHOWFUN", size: 20)
        label.textAlignment = .center
        return label
    }()

    override init(frame: CGRect) {
        //coinButton.setBackgroundImage(image, for: .normal)
        super.init(frame: frame)
        axis = .vertical
        backView.addSubview(button)
        backView.contentMode = .center
        button.setBackgroundImage(UIImage(named: "ShopCardCoin"), for: .normal)
        button.contentMode = .center
        contentMode = .center
        addArrangedSubview(backView)
        addArrangedSubview(label)
        setConstraints()
        
        changeCardSelected()
    }
    
    
    required init(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    
    func changeCardSelected() {
        if !isSelected {
            button.layer.shadowColor = UIColor.black.cgColor
            button.layer.shadowOffset = CGSize(width: 5, height: 5)
            button.layer.shadowOpacity = 1
            button.layer.shadowRadius = 4
        }
    }
}

extension ShopCardCoin {
    private func setConstraints() {
        backView.snp.makeConstraints { make in
            make.height.width.equalTo(110)
        }
        button.snp.makeConstraints { make in
            make.height.width.equalTo(110)
            make.centerX.centerY.equalTo(backView)
        }
    }
}
