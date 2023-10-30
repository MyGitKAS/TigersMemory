
import UIKit
import SnapKit

class CoinCountView: UIImageView {
    
    let backgroundImage = UIImage(named: "CoinCountBG")
    let miniCoinImageView = UIImageView()
    let coinCountLabel = UILabel()
    let hStack = UIStackView()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        image = backgroundImage
        miniCoinImageView.image = UIImage(named: "MiniCoin")
        miniCoinImageView.contentMode = .scaleAspectFit
        miniCoinImageView.contentMode = .left
        coinCountLabel.text = "44"
        coinCountLabel.font = UIFont(name: "CHOWFUN", size: 22)
        coinCountLabel.contentMode = .left
        hStack.axis = .horizontal
        //hStack.spacing = 10
        hStack.contentMode = .center
        //hStack.layoutMargins = UIEdgeInsets(top: 0, left: 5, bottom: 0, right: 10)
        hStack.addArrangedSubview(miniCoinImageView)
        hStack.addArrangedSubview(coinCountLabel)
        addSubview(hStack)
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
        
    }
}

