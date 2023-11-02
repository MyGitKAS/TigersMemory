
import UIKit

extension UILabel {
    func theTitle(text: String, size: CGFloat = 40, color: UIColor = .white) {
        self.text = text
        self.font = UIFont(name: "CHOWFUN", size: size)
        self.textColor = color
        self.textAlignment = .center
    }
}
