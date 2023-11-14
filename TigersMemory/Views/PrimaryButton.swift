
import UIKit

class PrimaryButton: UIButton {
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setBackgroundImage(UIImage(named: "PrimaryButton"), for: .normal)
        changeButtonFont(title: "PLAY", size: 40)       
        setTitleColor(.theTigerGold, for: .normal)
        menuShadow()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
