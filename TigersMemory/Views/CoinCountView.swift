
import UIKit
import SnapKit

class CoinCountView: UIImageView {
    
    let backgroundImage = UIImage(named: "CoinCountBG")
    let miniCoinImageView = UIImageView()
    let coinCountLabel = UILabel()
    let hStack = UIStackView()
    let backView = UIView()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        image = backgroundImage
        addSubview(hStack)
        
        backView.addSubview(coinCountLabel)
     
        miniCoinImageView.image = UIImage(named: "MiniCoin")
        miniCoinImageView.contentMode = .scaleAspectFit
        miniCoinImageView.contentMode = .left
        
        coinCountLabel.text = "44"
        coinCountLabel.font = UIFont(name: "CHOWFUN", size: 22)
        coinCountLabel.contentMode = .left
        
        hStack.axis = .horizontal
        hStack.contentMode = .center
        hStack.addArrangedSubview(miniCoinImageView)
        hStack.addArrangedSubview(backView)
        
        setConstraints()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}

extension CoinCountView {
    private func setConstraints() {
        hStack.snp.makeConstraints { make in
            make.size.equalToSuperview()
        }
        coinCountLabel.snp.makeConstraints { make in
            make.centerX.centerY.equalTo(backView)
        }
        
    }
}

