
import UIKit

class Logo: UIImageView {
    
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        image = UIImage(named: "Logo.png")
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
