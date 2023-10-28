
import SnapKit
import UIKit

class MenuViewController: BaseViewController {

    private let secondTiger = UIImageView(image: UIImage(named: "SecondTiger.png"))
    private let bottomGroup = UIImageView(image: UIImage(named: "BottomGroup.png"))
    private let coin = UIImageView(image: UIImage(named: "Coin.png"))
    private let mainMenu = MainMenu()
    let label = UILabel()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        secondTiger.sizeToFit()
        secondTiger.contentMode = .scaleAspectFill
        view.addSubview(secondTiger)
        view.addSubview(bottomGroup)
        view.addSubview(mainMenu)
        view.addSubview(coin)
        setConstraints()
    }
    
    @objc func primaryButtonTapped() {
        let vc = BaseViewController()
        navigationController?.pushViewController(vc, animated: true)
    }
}

extension MenuViewController {
    private func setConstraints() {
        
        let height = view.frame.height
        print(height)
        let width = view.frame.width
        
        secondTiger.snp.makeConstraints { make in
            make.top.equalToSuperview().offset((height / 100) * 8)
            make.leading.equalToSuperview().offset((width / 100) * 5)
            make.trailing.equalToSuperview()
        }
        
        mainMenu.snp.makeConstraints { make in
            make.centerX.equalToSuperview()
            make.top.equalToSuperview().offset(400)
        }
        
        bottomGroup.snp.makeConstraints { make in
            make.bottom.equalToSuperview()
            make.centerX.equalToSuperview()
            make.width.equalTo(420)
        }
        
        coin.snp.makeConstraints { make in
            make.leading.equalToSuperview().inset(-30)
            make.top.equalToSuperview().offset(310)
        }
    }
}
