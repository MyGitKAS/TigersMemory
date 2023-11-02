
import UIKit
// TODO:- 
class CustomActivityIndicatorView: UIActivityIndicatorView {
    
    override init(style: UIActivityIndicatorView.Style) {
        super.init(style: style)
        if let customImage = UIImage(named: "ActivityIndicator") {
            self.contentMode = .scaleAspectFit
            //self.image = customImage
        }
    }
    required init(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
