
import UIKit

extension UILabel {
    func theTitle(text: String, size: CGFloat = 50, color: UIColor = .white) {
        self.text = text
        self.font = UIFont(name: "CHOWFUN", size: size)
        self.textColor = color
        self.textAlignment = .center
        
        layer.shadowColor = UIColor.black.cgColor
        layer.shadowOffset = CGSize(width: -0.5, height: 0.7)
        layer.shadowOpacity = 1.0
        layer.shadowRadius = 5
        layer.masksToBounds = false
    }
}
