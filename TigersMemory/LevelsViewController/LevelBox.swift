
import UIKit
import SnapKit

class LevelBox: UIView {
    
    private let backgroundImageView = UIImageView()
    private let numberLevelLabel = UILabel()
    private let passedImageView = UIImageView()
    private let lockImageView = UIImageView()
    
    let imageEmpty =  UIImage(named: "EmptyBox")
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        backgroundImageView.image = imageEmpty
        passedImageView.image = UIImage(named: "Passed")
        lockImageView.image = UIImage(named: "Lock")
     
        addSubview(backgroundImageView)
        addSubview(lockImageView)
        addSubview(passedImageView)
        
        setConstraints()
        print(self.frame)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}

extension LevelBox {
    private func setConstraints() {
        
        self.snp.makeConstraints { make in
            make.height.equalTo(imageEmpty?.size.height as! ConstraintRelatableTarget)
            make.width.equalTo(imageEmpty?.size.width as! ConstraintRelatableTarget)
        }
        backgroundImageView.snp.makeConstraints { make in
            make.centerY.centerX.equalTo(self)
        }
        lockImageView.snp.makeConstraints { make in
            make.centerY.centerX.equalTo(self)
        }
        passedImageView.snp.makeConstraints { make in
            make.top.equalTo(self).offset(-4)
            make.leading.equalTo(self).offset(2)
        }
    }
}
