
import UIKit

class MainNavigationViewController: UINavigationController {

    override func viewDidLoad() {
        super.viewDidLoad()
        pushViewController(MenuViewController(), animated: true)
    }
    


}
