
import UIKit
import SnapKit

class RulesViewController: BaseViewController {

    private let rulesView = RulesStackView()
    private let flag = UIImageView(image: UIImage(named: "Flag.png"))
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.addSubview(rulesView)
        view.addSubview(flag)
        
        setConstraints()
    }
}

extension RulesViewController {
    private func setConstraints() {
     
        rulesView.snp.makeConstraints { make in
            make.centerY.equalToSuperview().offset(-35)
            make.leading.equalToSuperview().offset(20)
            make.trailing.equalToSuperview().offset(-20)
        }
        flag.snp.makeConstraints { make in
            make.leading.equalToSuperview().offset(-25)
            make.bottom.equalToSuperview().offset(-30)
        }
    }
}
