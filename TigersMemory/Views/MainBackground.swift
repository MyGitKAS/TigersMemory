
import UIKit

class MainBackground: UIImageView {
    private let blackoutView = UIView()
    override init(frame: CGRect) {
        super.init(frame: frame)
        blackoutView.backgroundColor = UIColor(red: 0, green: 0, blue: 0, alpha: 0.2)
        contentMode = .scaleAspectFill
        image = UIImage(named: "Background.png")
        addSubview(blackoutView)
    }
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
