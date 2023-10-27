
import UIKit

class MainBackground: UIImageView {
    
    override init(frame: CGRect) {
        
        super.init(frame: frame)
        image = UIImage(named: "Background.png")
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
