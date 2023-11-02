
import UIKit
import SnapKit
class ProgressViewController: BaseViewController {

    let progressBoxView = ProgressBoxView()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.addSubview(progressBoxView)
       
        progressBoxView.snp.makeConstraints { make in
            make.centerX.equalToSuperview()
            make.centerY.equalToSuperview()
//            make.height.width.equalTo(300)
        }
        
    }
    

}
