
import UIKit

class TestImageView: UIImageView {
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        self.frame = frame
        //self.image = UIImage(named: "Logo.png")
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
