
import UIKit

class ProgressBoxFactory {
    static func createBox(with image: UIImage, mainText: String, secondText: String) -> UIStackView {
        
        let imageView = UIImageView(image: image)
        imageView.contentMode = .scaleAspectFit
        let mainLabel = UILabel()
        let secondLabel = UILabel()
        
       
        mainLabel.theTitle(text: mainText, size: 33)
        secondLabel.theTitle(text: secondText, size: 17)
        
        
        let stackView = UIStackView(arrangedSubviews: [imageView, mainLabel, secondLabel])
        stackView.axis = .vertical
        stackView.spacing = 5
        
        return stackView
    }
}
