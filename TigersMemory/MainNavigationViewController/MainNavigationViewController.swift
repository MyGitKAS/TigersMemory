
import UIKit

class MainNavigationViewController: UINavigationController {
    let backButtonImage = UIImage(named: "BackImageButton")
    //let backButton = UIBarButtonItem(image: backButtonImage, style: .plain, target: self, action: #selector(backButtonPressed))
    override func viewDidLoad() {
        super.viewDidLoad()
        pushViewController(MenuViewController(), animated: true)
        navigationItem.leftBarButtonItem = UIBarButtonItem(image: backButtonImage, style: .plain, target: self, action: #selector(backButtonPressed))
//        navigationController?.navigationBar.backIndicatorImage = backImage
//        navigationController?.navigationBar.backIndicatorTransitionMaskImage = backImage
    }
    

    
    


    @objc func backButtonPressed() {
        navigationController?.popViewController(animated: true)

  }
}
