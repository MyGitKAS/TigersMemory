
import UIKit
import SnapKit


class ShopViewController: BaseViewController {
    
    private let coinCountView = CoinCountView(frame: CGRect(x: 0, y: 0, width: 120, height: 40))
    private let shopMenu = ShopView(frame: CGRect(x: 0, y: 0, width: 342, height: 200))
    private let changeButton = PrimaryButton()
    private let japanHouseView = UIImageView(image: UIImage(named: "JapanHouse"))
    let titleLabel = UILabel()
   

    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.addSubview(coinCountView)
        view.addSubview(shopMenu)
        view.addSubview(titleLabel)
        view.addSubview(changeButton)
        view.addSubview(japanHouseView)
        
        configure()
        setConstraints()
        print("this-----\(shopMenu.frame)")
    }
    
    private func configure() {
        titleLabel.theTitle(text: "Shop")
        changeButton.changeButtonFont(title: "SELECT", size: 33)
    }
}

extension ShopViewController {
    private func setConstraints() {
        
        coinCountView.snp.makeConstraints { make in
            make.top.equalToSuperview().offset(55)
            make.trailing.equalToSuperview().offset(-20)
        }
        shopMenu.snp.makeConstraints { make in
            make.centerY.equalToSuperview()
            make.centerX.equalToSuperview()
            make.height.equalTo(shopMenu.frame.height)
        }
        changeButton.snp.makeConstraints { make in
            ////??????
            make.top.equalTo(shopMenu.snp_bottomMargin).offset(80)
            make.centerX.equalToSuperview()
        }
        titleLabel.snp.makeConstraints { make in
            ////???????
            make.centerX.equalToSuperview()
            make.bottom.equalTo(shopMenu.snp_topMargin).offset(-20)
        }
        
        japanHouseView.snp.makeConstraints { make in
            make.trailing.equalToSuperview().offset(40)
            make.bottom.equalToSuperview()
        }
    }
}

