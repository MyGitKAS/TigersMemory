
import UIKit
import SnapKit


//class ShopView: UIView {
//
//   private let backgroundSubstrate = UIImageView(image: UIImage(named: "BackgroundSubstrate.png"))
//
//
//    override init(frame: CGRect) {
//        super.init(frame: frame)
//       // backgroundSubstrate.frame = CGRect(x: 0, y: 0, width: 342, height: 200)
//        backgroundColor = .yellow
//        addSubview(backgroundSubstrate)
//        print(backgroundSubstrate.frame)
//
//
//
//        backgroundSubstrate.snp.makeConstraints { make in
//            make.centerX.centerY.equalToSuperview()
//        }
//
//        //image = UIImage(named: "BackgroundSubstrate.png")
//
////        self.frame = frame
////
////              // Дополнительные настройки
////        self.contentMode = .scaleAspectFit
////        self.clipsToBounds = true
//
//
////           if let image = self.image {
////               self.frame = CGRect(origin: self.frame.origin, size: image.size)
////           }
//    }
//
//    required init?(coder: NSCoder) {
//        fatalError("init(coder:) has not been implemented")
//    }
//}



class ShopView: UIView {

    private let backgroundSubstrate = UIImageView(image: UIImage(named: "BackgroundSubstrate.png"))
    private let itemStack = UIStackView()
    private let shopCardCoin = ShopCardCoin()
    private let shopCardDragon = ShopCardDragon()

    override init(frame: CGRect) {
        super.init(frame: frame)
        
       
        addSubview(backgroundSubstrate)
        addSubview(itemStack)

        configure()
        setConstraints()
        //self.frame = backgroundSubstrate.frame
        print(backgroundSubstrate.frame)
    }

    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    private func configure() {
        itemStack.axis = .horizontal
        itemStack.distribution = .fillEqually
        itemStack.spacing = 10
        itemStack.contentMode = .scaleAspectFill
        itemStack.addArrangedSubview(shopCardCoin)
        itemStack.addArrangedSubview(shopCardDragon)
    }
}

extension ShopView {
    private func setConstraints() {
        itemStack.snp.makeConstraints { make in
            make.leading.equalTo(backgroundSubstrate).offset(30)
            make.trailing.equalTo(backgroundSubstrate).offset(-30)
            make.top.equalTo(backgroundSubstrate).offset(30)
            make.bottom.equalTo(backgroundSubstrate).offset(-30)
        }
        backgroundSubstrate.snp.makeConstraints { make in
            make.centerX.centerY.equalTo(self)
            make.width.equalTo(350)
        }
    }
}
