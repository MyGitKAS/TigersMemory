
import UIKit
import SnapKit

class ShopViewController: BaseViewController {

    let coinCountView = CoinCountView(frame: CGRect(x: 0, y: 0, width: 120, height: 40))
    override func viewDidLoad() {
        super.viewDidLoad()
        view.addSubview(coinCountView)
        
        setConstraints()
    }
    



}

extension ShopViewController {
    private func setConstraints() {
    
        coinCountView.snp.makeConstraints { make in
            make.width.equalTo(110)
            make.height.equalTo(40)
            make.top.equalToSuperview().offset(60)
            make.trailing.equalToSuperview().offset(-20)
        }
        
    }
}
