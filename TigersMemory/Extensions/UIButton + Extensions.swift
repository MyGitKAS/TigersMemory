
import UIKit

extension UIButton {
    func menuShadow() {
        titleLabel!.layer.shadowColor = UIColor.black.cgColor
        titleLabel!.layer.shadowOffset = CGSize(width: -0.5, height: 0.7)
        titleLabel!.layer.shadowOpacity = 1.0
        titleLabel!.layer.shadowRadius = 5
        titleLabel!.layer.masksToBounds = false
    }
    
    func changeButtonFont(title: String, size: CGFloat) {
        self.titleLabel?.font = UIFont(name: "CHOWFUN", size: size)
        setTitle(title, for: .normal)
        
    }
    
}
