
import UIKit
import SnapKit

class LevelsViewCell: UICollectionViewCell {
    
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
        
        numberLevelLabel.theTitle(text: "1", size: 33, color: .theTigerRed)
     
        addSubview(backgroundImageView)
        addSubview(lockImageView)
        addSubview(passedImageView)
        addSubview(numberLevelLabel)
        
        
        
        setConstraints()
        
        lockImageView.isHidden = true
        passedImageView.isHidden = true
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}

extension LevelsViewCell {
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
        
        numberLevelLabel.snp.makeConstraints { make in
            make.centerY.centerX.equalTo(self)
        }
        
        passedImageView.snp.makeConstraints { make in
            make.top.equalTo(self).offset(-4)
            make.leading.equalTo(self).offset(2)
        }
    }
}
