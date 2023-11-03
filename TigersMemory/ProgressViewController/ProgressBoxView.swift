
import UIKit
import SnapKit

class ProgressBoxView: UIView {
    
    private let goldenImage = UIImage(named:"ProgressGolden")
    private let proImage = UIImage(named: "ProgressProBW")
    private let guruImage = UIImage(named: "ProgressGuruBW")
    
    private let progressLabel = UILabel()
    
    private let hStack = UIStackView()
    private let vStack = UIStackView()
    
    
    override init(frame: CGRect) {
        super.init(frame: frame)
       let goldenBox = ProgressBoxFactory.createBox(with: goldenImage!, mainText: "Golden", secondText: "Make One Payment")
        let proBox = ProgressBoxFactory.createBox(with: proImage!, mainText: "Pro", secondText: "Earn 200 Points")
       let guruBox = ProgressBoxFactory.createBox(with: guruImage!, mainText: "Guru", secondText: "Complete All Levels")
        
        progressLabel.theTitle(text: "Progress")
        
        hStack.addArrangedSubview(goldenBox)
        hStack.addArrangedSubview(proBox)
        hStack.spacing = 25

        vStack.axis = .vertical
        vStack.spacing = 20
        vStack.addArrangedSubview(progressLabel)
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
