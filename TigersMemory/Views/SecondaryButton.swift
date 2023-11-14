
import UIKit

class SecondaryButton: UIButton {
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setBackgroundImage(UIImage(named: "SecondaryButton"), for: .normal)
        titleLabel?.font = UIFont(name: "CHOWFUN", size: 27)
        setTitleColor(.theTigerRed, for: .normal)
        menuShadow()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
