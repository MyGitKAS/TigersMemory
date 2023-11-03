
import UIKit
import SnapKit

class ShopCardDragon: UIStackView {

    private let coinView = UIImageView(image: UIImage(named: "MiniCoin")?.resizeImage(newSize: CGSize(width: 30, height: 30)))
    private var isSelected = false
    private let button = UIButton()
    private let backView = UIView()
    private let backLabelView = UIView()
    private let hStack = UIStackView()
    private let label: UILabel = {
        let label = UILabel()
        label.text = "100"
        label.font = UIFont(name: "CHOWFUN", size: 18)
        label.textAlignment = .left
        return label
    }()

    override init(frame: CGRect) {
        super.init(frame: frame)
        coinView.contentMode = .right
        hStack.axis = .horizontal
        axis = .vertical
        backLabelView.addSubview(label)
        hStack.addArrangedSubview(coinView)
        hStack.addArrangedSubview(backLabelView)
        hStack.contentMode = .center
        hStack.distribution = .fillEqually
        
        
        
        backView.addSubview(button)
        backView.contentMode = .center
        button.setBackgroundImage(UIImage(named: "ShopCardDragon"), for: .normal)
        button.contentMode = .center
        axis = .vertical
        contentMode = .center
        addArrangedSubview(backView)
        addArrangedSubview(hStack)
        setConstraints()
        
        //changeCardSelected()
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

extension ShopCardDragon {
    private func setConstraints() {
        backView.snp.makeConstraints { make in
            make.height.width.equalTo(110)
        }
        button.snp.makeConstraints { make in
            make.height.width.equalTo(110)
            make.centerX.centerY.equalTo(backView)
        }
        label.snp.makeConstraints { make in
            make.centerY.equalTo(backLabelView)
            make.leading.equalTo(backLabelView).offset(3)
        }
    }
}
