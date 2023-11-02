
import UIKit
import SnapKit

class ProgressBoxView: UIView {
    
    let goldenImage = UIImage(named:"ProgressGolden")
    let proImage = UIImage(named: "ProgressProBW")
    let guruImage = UIImage(named: "ProgressGuruBW")
    
    let hStack = UIStackView()
    let vStack = UIStackView()
    
    
    override init(frame: CGRect) {
        super.init(frame: frame)
       let goldenBox = ProgressBoxFactory.createBox(with: goldenImage!, mainText: "Golde", secondText: "ksmowkepw")
        let proBox = ProgressBoxFactory.createBox(with: proImage!, mainText: "Pro", secondText: "ksmowkepw ")
       let guruBox = ProgressBoxFactory.createBox(with: guruImage!, mainText: "Guru", secondText: "ksmowkepw")
        
        hStack.addArrangedSubview(goldenBox)
        hStack.addArrangedSubview(proBox)
        hStack.spacing = 25

        vStack.axis = .vertical
        vStack.spacing = 20
        vStack.addArrangedSubview(hStack)
        vStack.addArrangedSubview(guruBox)
        
        addSubview(vStack)
        
        vStack.snp.makeConstraints { make in
            make.centerY.centerX.equalToSuperview()
        }
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
