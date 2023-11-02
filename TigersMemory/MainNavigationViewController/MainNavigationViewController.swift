
import UIKit

class MainNavigationViewController: UINavigationController {
    
    let backButtonImage = UIImage(named: "BackImageButton")
 
    override func viewDidLoad() {
        super.viewDidLoad()
        pushViewController(MenuViewController(), animated: true)
        navigationItem.leftBarButtonItem = UIBarButtonItem(image: backButtonImage, style: .plain, target: self, action: #selector(backButtonPressed))
    }
    
    @objc func backButtonPressed() {
        navigationController?.popViewController(animated: true)
  }
}
